# Glossary

> Key terms and definitions referenced throughout the course material.

---

<!-- TODO: Fill in definitions for each term. Below is the initial set drawn from the demo planning docs. Add/remove terms as needed. -->

## Workflow & WDL Terms

**[WDL (Workflow Description Language)](https://sciwiki.fredhutch.org/datascience/wdl_workflows/)**
A human-readable language used to define computational workflows, including tasks, inputs, outputs, and how steps connect together.

**[Workflow](https://sciwiki.fredhutch.org/datascience/wdl_workflows/#anatomy-of-a-workflow)**
An ordered set of tasks that together perform a complete analysis — from input data to final results.

**[Task](https://sciwiki.fredhutch.org/datascience/wdl_workflows/#anatomy-of-a-task)**
A single unit of work within a workflow, typically wrapping one command-line tool.

**[Scatter-Gather](https://sciwiki.fredhutch.org/datascience/wdl_workflows/#parallelization-with-scatter-gather)**
A pattern that runs the same task on multiple inputs in parallel (scatter), then optionally combines the results afterward (gather).

**`meta` Block**
A section within a workflow or task used to store descriptive information (e.g., author, description, version). It does not affect execution.

**`parameter_meta` Block**
A section that documents workflow or task inputs with descriptions and helpful guidance for users.

**Call Caching**
A feature that reuses results from a previously completed task if the inputs and settings have not changed — saving time and compute resources.

**Inputs (inputs.json)**
A JSON file that provides values for a workflow’s input parameters when it is executed.

**Options (options.json)**
A JSON file that defines execution-level settings such as output location, call caching behavior, and runtime configuration.

## WILDS Ecosystem

**WILDS**
<!-- TODO: Define — the initiative / team maintaining shared workflow infrastructure -->

**WILDS WDL Library**
<!-- TODO: Define — curated repository of reusable WDL modules and pipelines -->

**WILDS Docker Library**
<!-- TODO: Define — collection of versioned Docker images used by WILDS workflows -->

**Module**
<!-- TODO: Define — a self-contained WDL file providing tasks for a single bioinformatics tool -->

**Pipeline**
<!-- TODO: Define — a WDL workflow that imports and chains together multiple modules -->

## Execution Platforms

**[PROOF](https://sciwiki.fredhutch.org/datascience/proof/)**
Fred Hutch’s web-based interface for submitting, monitoring, and managing WDL workflows without using the command line.

**[Sprocket](https://sciwiki.fredhutch.org/datascience/wdl_execution_engines/#sprocket)**
A modern command-line WDL execution tool used to run workflows locally or on the cluster.

**[Cromwell](https://sciwiki.fredhutch.org/datascience/wdl_execution_engines/#cromwell)**
An open-source workflow execution engine developed by the Broad Institute that runs WDL workflows.

**[miniWDL](https://sciwiki.fredhutch.org/datascience/wdl_execution_engines/#miniwdl)**
A lightweight WDL execution engine often used for local development and testing.

## Infrastructure

**[Rhino](https://sciwiki.fredhutch.org/compdemos/howtoRhino/)**
<!-- TODO: Define — Fred Hutch's login/compute nodes -->

**Gizmo**
<!-- TODO: Define — Fred Hutch's HPC cluster nodes -->

**SLURM**
<!-- TODO: Define — the job scheduler / workload manager used on the Fred Hutch cluster -->

**Docker**
<!-- TODO: Define — a platform for running applications in isolated containers -->

**Apptainer (formerly Singularity)**
<!-- TODO: Define — a container runtime commonly used on HPC clusters (including Fred Hutch's);
  WDL tasks specify Docker images, but the execution engine may use Apptainer to run them on the cluster -->

**Software Environment / Container**
<!-- TODO: Define — a packaged, reproducible runtime with all dependencies for a tool -->

## Bioinformatics Terms

**SRA (Sequence Read Archive)**
<!-- TODO: Define — NCBI's public repository of sequencing data -->

**STAR**
<!-- TODO: Define — a widely-used RNA-seq read aligner -->

**BAM**
<!-- TODO: Define — Binary Alignment Map, a file format for storing aligned sequencing reads -->

**Reference Genome**
<!-- TODO: Define — a representative DNA sequence used as a coordinate system for alignment -->

**iGenomes**
<!-- TODO: Define — a collection of pre-built reference genome files -->

## General

**OCDO (Office of the Chief Data Officer)**
<!-- TODO: Define — the Fred Hutch office that supports staff with data tools, resources, and education
  through its Data Science Lab (https://ocdo.fredhutch.org/). Home to teams covering training,
  translational data science, data engineering, software development, and data governance.
  Provides resources referenced in this course including the WILDS ecosystem, Data House Calls,
  SciWiki, and Fred Hutch Data Slack -->

**GitHub**
<!-- TODO: Define -->

**Git**
<!-- TODO: Define -->

**Terminal / Command Line**
<!-- TODO: Define -->

---

**Home:** [Course Overview](index.md)
