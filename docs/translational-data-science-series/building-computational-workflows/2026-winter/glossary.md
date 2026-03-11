# Glossary

> Key terms and definitions referenced throughout the course material.

---

## Workflow & WDL Terms

#### [WDL (Workflow Description Language)](https://sciwiki.fredhutch.org/datascience/wdl_workflows/)
A human-readable language for defining computational workflows involving tasks, inputs, outputs, and connected steps.

#### [Workflow](https://sciwiki.fredhutch.org/datascience/wdl_workflows/#anatomy-of-a-workflow)
An ordered set of tasks that together perform a complete analysis, from input data to final results.

#### [Task](https://sciwiki.fredhutch.org/datascience/wdl_workflows/#anatomy-of-a-task)
A single unit of work within a workflow, typically wrapping one command-line tool. Defines inputs, a command to run, outputs, and a runtime environment.

#### [Scatter-Gather](https://sciwiki.fredhutch.org/datascience/wdl_workflows/#parallelization-with-scatter-gather)
A pattern that runs the same task on multiple inputs in parallel (scatter), then optionally collects results afterward (gather).

#### `meta` Block
A section in a workflow or task for descriptive information (e.g., author, description). Has no effect on execution.

#### `parameter_meta` Block
A section that documents inputs with descriptions for users. Has no effect on execution.

#### Inputs (`inputs.json`)
A JSON file providing inputs for a workflow.

#### Options (`options.json`)
A JSON file that configures settings such as output location and call caching behavior.

#### Call Caching
Reuses results from a previously completed task when its inputs haven't changed, saving time and compute. Enabled via `options.json`.

---

## Execution Platforms

#### Terminal / Command Line
A text-based interface for running commands on a computer.

#### [Sprocket](https://sciwiki.fredhutch.org/datascience/wdl_execution_engines/#sprocket)
A command-line WDL execution tool for running workflows locally or on the cluster.

#### [PROOF](https://sciwiki.fredhutch.org/datascience/proof/)
Fred Hutch's web interface for submitting and monitoring WDL workflows on the cluster without using the command line.

#### [Cirro](https://cirro.bio/)
A cloud-based platform for running and managing bioinformatics workflows, supporting WDL and other workflow languages.

#### [Cromwell](https://sciwiki.fredhutch.org/datascience/wdl_execution_engines/#cromwell)
An open-source WDL execution engine from the Broad Institute. Powers PROOF on the Fred Hutch cluster.

#### [miniWDL](https://sciwiki.fredhutch.org/datascience/wdl_execution_engines/#miniwdl)
A lightweight WDL execution engine often used for local development and testing.

---

## Infrastructure

#### [Rhino](https://sciwiki.fredhutch.org/compdemos/howtoRhino/)
Fred Hutch's shared cluster login nodes, where you log into the cluster for interactive work and job submission.

#### [Gizmo](https://sciwiki.fredhutch.org/pathways/path-grab/)
Fred Hutch's cluster compute nodes where workflow tasks are scheduled and executed.

#### [SLURM](https://sciwiki.fredhutch.org/scicomputing/compute_jobs/)
The job scheduler on the Fred Hutch cluster that allocates CPUs, memory, and runtime to jobs (including individual WDL tasks). Jobs are submitted using an SBATCH file

#### Software Container
A packaged runtime containing a tool and all its dependencies, ensuring a workflow runs identically on any machine.

#### [Docker](https://sciwiki.fredhutch.org/compdemos/Docker/)
A platform for packaging software and its dependencies into an isolated, portable container. WDL tasks specify a Docker image in their `runtime` block.

#### [Apptainer](https://sciwiki.fredhutch.org/compdemos/Apptainer/) (formerly Singularity)
An cluster-compatible container. The cluster uses Apptainer to run Docker images.

---

## WILDS Ecosystem

#### WILDS
Fred Hutch's **W**orkflows **I**ntegrating **L**arge **D**ata and **S**oftware initiative maintains validated workflow infrastructure available in the WILDS WDL Library and WILDS Docker Library.

#### [WILDS WDL Library](https://github.com/getwilds/wilds-wdl-library)
A collection of tested, reusable WDL modules and pre-built pipelines.

#### Module
A self-contained WDL file in the WILDS WDL Library providing reusable tasks for a single tool (e.g., [`ww-sra`](https://github.com/getwilds/wilds-wdl-library/tree/main/modules/ww-sra), [`ww-star`](https://github.com/getwilds/wilds-wdl-library/tree/main/modules/ww-star)).

#### Pipeline
A complete workflow in the WILDS WDL Library that chains together modules for a multi-step analysis (e.g., [`ww-sra-star`](https://github.com/getwilds/wilds-wdl-library/tree/main/pipelines/ww-sra-star)).

#### [WILDS Docker Library](https://github.com/getwilds/wilds-docker-library)
A collection of Docker images maintained by Fred Hutch and used by WILDS workflows, each packaging a specific bioinformatics tool and its dependencies.

---

## Bioinformatics Terms

#### [SRA (Sequence Read Archive)](https://www.ncbi.nlm.nih.gov/sra)
NCBI's public repository of raw sequencing data.

#### [Salmon](https://combine-lab.github.io/salmon/)
A tool that estimates transcript-level expression from RNA-seq reads.

#### [STAR](https://github.com/alexdobin/STAR/blob/master/doc/STARmanual.pdf)
A widely-used RNA-seq aligner that maps reads to a reference genome, producing aligned BAM files.

#### BAM file
A compressed format for storing aligned sequencing reads.

#### Reference Genome
A representative sequence for a species (e.g. GRCh38 for human).

#### iGenomes
Pre-built reference genome files (sequences, indexes, annotations) for common organisms, available on the Fred Hutch cluster.

---

## General

#### [OCDO (Office of the Chief Data Officer)](https://ocdo.fredhutch.org/)
The Fred Hutch department that supports researchers with data tools and education through its Data Science Lab ([ocdo.fredhutch.org](https://ocdo.fredhutch.org/)). Provides WILDS, SciWiki, Data House Calls, and Fred Hutch Data Slack among other resources.

#### GitHub
A platform for hosting and collaborating on code. The WILDS libraries live on GitHub, and WDL workflows import modules via GitHub URLs.

#### Git
A version control system that tracks code changes over time.

---

> Learn more about:
> [Office of the Chief Data Officer](https://ocdo.fredhutch.org/) |  [WILDS](https://getwilds.org/)

--- 

**Home:** [Course Overview](index.md)
