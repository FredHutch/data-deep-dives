# Module 4: Customizing Workflows

> How to modify and extend existing pipelines to fit your needs.

---

So we've seen how a WDL workflow is structured and how it scales — but how do you tweak one to suit your specific research needs? The good news is that WDL workflows are designed to be straightforward to customize.

## Common Customizations

Here are some common scenarios and how you'd handle them:

| I want to... | How to do it | Bioinformatics example |
|---|---|---|
| **Provide my own datasets** as input instead of downloading them | Update the inputs to accept a list of files (`Array[File]`) instead of a list of IDs | `Array[File] my_fastqs = [file1.fq, file2.fq, ...]` |
| **Use a different tool** for post-processing | Swap out the `import` statement for whichever module you prefer | `ww-salmon` → `ww-star` for alignment; `ww-bwa` + `ww-gatk` for DNA-seq |
| **Add an extra processing step** | Import another module and add a `call` at the bottom, feeding in results from the previous task | Add `ww-deseq2` for differential expression, or `ww-fastqc` for quality control |
| **Save results to an S3 bucket** | Import the AWS module and add a task to upload your outputs | `ww-aws-sso` module (supports both upload and download) |
| **Use a tool that doesn't have a module yet** | We'll help you build one! | See the WILDS WDL Development Program below |

The key takeaway: because WDL workflows are modular, each of these changes is a small, targeted edit — not a rewrite of the entire pipeline.

---

## Finding and Building WDL Modules

The easiest way to write a WDL is to start from someone else's! There are plenty of existing WDL workflows out there, including a curated collection right here at Fred Hutch.

### WILDS WDL Library

The [WILDS WDL Library](https://sciwiki.fredhutch.org/datascience/wilds_wdl/) is a curated collection of rigorously tested and well-documented WDL tasks and workflows that are free for everyone to use. You can browse the full library on [GitHub](https://github.com/getwilds/wilds-wdl-library).

### WILDS WDL Development Program

Can't find a module that fits your needs? The WILDS team has started a **[WDL Development Program](https://sciwiki.fredhutch.org/datascience/wilds_workflow_dev/)** where they will work together with you — free of charge — to develop a WDL workflow and incorporate it into the library. The team is very open to requests, so don't hesitate to reach out.

### Other Resources

There are also several community-maintained WDL repositories worth exploring:

- [Broad Institute's WARP](https://broadinstitute.github.io/warp/) — production-grade pipelines from the Broad
- [GATK Workflows](https://github.com/gatk-workflows) — variant calling and related pipelines
- [BioWDL](https://biowdl.github.io/) — bioinformatics workflows from LUMC
- [Dockstore](https://dockstore.org/) — a registry for finding and sharing WDL workflows

---

Now that we know what WDL workflows look like, how they scale, and how to customize them, it's time to get our hands dirty and actually run one on the Fred Hutch cluster!

---

**Previous:** [&larr; A Real-World Workflow](03-real-world-workflow.md) | **Next:** [Running Workflows &rarr;](05-running-workflows.md)
