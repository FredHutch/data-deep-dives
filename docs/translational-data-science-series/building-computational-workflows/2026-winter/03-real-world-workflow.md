# Module 3: A Real-World Workflow

> Walkthrough of the `ww-sra-salmon` pipeline — downloading RNA-seq data and quantifying with Salmon.

---

Everything so far has been relatively straightforward, but you might be wondering: why would I use WDL over a shell script? The true benefits of WDL become clear when you start to scale things up — in both complexity and volume. Let's take a look at a real-world example to get a better idea of that.

## The Big Picture

Don't worry too much about the exact bioinformatics context here. The general idea is:

1. **Download** a list of datasets from a public database
2. **Post-process** each dataset automatically
3. **Save** the final results to a location of our choosing

For the bioinformatics-inclined: we're downloading raw RNA sequencing data from [SRA](https://www.ncbi.nlm.nih.gov/sra) and quantifying it with [Salmon](https://salmon.readthedocs.io/).

## Walking Through the Workflow

Here's the workflow (simplified for readability — we'll highlight the key parts):

```wdl
version 1.0

import ".../ww-sra.wdl" as sra_tasks
import ".../ww-salmon.wdl" as salmon_tasks

workflow sra_salmon {
  input {
    Array[String] sra_id_list
    File transcriptome_fasta
    Int ncpu = 8
    Int memory_gb = 16
  }

  call salmon_tasks.build_index { input:
      transcriptome_fasta = transcriptome_fasta,
      ...
  }

  scatter ( id in sra_id_list ){
    call sra_tasks.fastqdump { input:
        sra_id = id,
        ...
    }

    call salmon_tasks.quantify { input:
        salmon_index_dir = build_index.salmon_index,
        fastq_r1 = fastqdump.r1_end,
        fastq_r2 = fastqdump.r2_end,
        ...
    }
  }

  call salmon_tasks.merge_results { input:
      salmon_quant_dirs = quantify.salmon_quant_dir,
      ...
  }

  output {
    Array[File] salmon_quant_dirs = quantify.salmon_quant_dir
    File tpm_matrix = merge_results.tpm_matrix
    File counts_matrix = merge_results.counts_matrix
  }
}
```

Let's walk through each section:

### Inputs

We start by defining our inputs — in particular, the dataset IDs we want to download (`sra_id_list`) and a reference transcriptome to align against during post-processing (`transcriptome_fasta`). Notice that `sra_id_list` is an `Array[String]` — a list of IDs, not just a single one. This becomes important later.

### Task Calls and Data Flow

From there, we call tasks to do the actual work. Each task's output can be directly piped into the next task as input — for example, `fastqdump.r1_end` (the downloaded data) feeds directly into `salmon_tasks.quantify`. This creates a clear chain of logic: download → quantify → merge results.

### Importing Modules

But where are those tasks defined? You'll notice we're not defining them in this file. Instead, we **import** them from external WDL scripts:

```wdl
import ".../ww-sra.wdl" as sra_tasks
import ".../ww-salmon.wdl" as salmon_tasks
```

You can import tasks from other local files or even directly from GitHub repositories. In fact, the [WILDS WDL Library](https://github.com/getwilds/wilds-wdl-library) maintains a large collection of pre-built, well-tested tasks that you can import into your own workflows. If you're familiar with Python, this is very similar to importing modules — or loading libraries in R. For more details on what's available, see the [WILDS WDL Library documentation on SciWiki](https://sciwiki.fredhutch.org/datascience/wilds_wdl/).

### Outputs

Finally, we specify which outputs to save. In this case, we're interested in the quantification results (both per-sample directories and merged matrices across all samples). You could easily add intermediate outputs here too if you wanted to keep the raw sequencing data.

---

## Scaling with Scatter-Gather

So far so good, but this would only process a single dataset. What if you have a list of 100 datasets that you want to download and process? This is where WDL really shines.

WDL handles this with a **scatter-gather** pattern. It's similar to a `for` loop, but instead of running things sequentially, it fans each iteration out to its own computational node for maximum parallelization:

```wdl
scatter ( id in sra_id_list ){
  call sra_tasks.fastqdump { input:
      sra_id = id,
      ...
  }

  call salmon_tasks.quantify { input:
      fastq_r1 = fastqdump.r1_end,
      fastq_r2 = fastqdump.r2_end,
      ...
  }
}
```

Since we provided `sra_id_list` as an array of IDs, the workflow automatically scatters across the entire list — each sample gets sent to its own node for downloading and quantification in parallel. If you have 100 samples that each take an hour, that's 100 hours sequentially versus roughly 1 hour in parallel. The only limit is the resources available to you, and on the Fred Hutch cluster, you have quite a lot of nodes to work with.

The workflow also handles the **handoff between tasks** automatically. When sample A finishes downloading, WDL immediately hands off the results to the quantification step — no need to wait for the rest of the samples to finish downloading first, and no need to manually babysit the process.

After all the scattered tasks complete, the results are automatically **gathered** back together. That's why the `merge_results` task (which sits outside the scatter block) can receive the full array of quantification outputs and combine them into a single matrix.

---

In the [next section](04-customizing-workflows.md), we'll see how straightforward it is to customize workflows like this one to suit your specific research needs.

---

**Previous:** [&larr; Hello World Workflow](02-hello-world.md) | **Next:** [Customizing Workflows &rarr;](04-customizing-workflows.md)
