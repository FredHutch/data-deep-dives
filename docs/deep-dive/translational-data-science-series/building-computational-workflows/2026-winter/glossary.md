# Glossary

> Key terms and definitions referenced throughout the course material.

---

<!-- TODO: Fill in definitions for each term. Below is the initial set drawn from the demo planning docs. Add/remove terms as needed. -->

## Workflow & WDL Terms

**WDL (Workflow Description Language)**
<!-- TODO: Define -->

**Workflow**
<!-- TODO: Define — a sequence of tasks that together perform an analysis -->

**Task**
<!-- TODO: Define — a single unit of work within a workflow -->

**Scatter-Gather**
<!-- TODO: Define — a pattern for running the same task on multiple inputs in parallel -->

**`meta` Block**
<!-- TODO: Define — a block within a workflow or task that provides descriptive metadata (author, description, etc.) -->

**`parameter_meta` Block**
<!-- TODO: Define — a block within a task that documents each input/output parameter with descriptions and help text -->

**Call Caching**
<!-- TODO: Define — reusing outputs from previously completed tasks when inputs haven't changed -->

**Inputs (inputs.json)**
<!-- TODO: Define — a JSON file specifying the values for a workflow's input parameters -->

**Options (options.json)**
<!-- TODO: Define — a JSON file specifying execution configuration (output directory, caching, etc.) -->

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

**PROOF**
<!-- TODO: Define — Fred Hutch's point-and-click web interface for submitting and monitoring WDL workflows -->

**Sprocket**
<!-- TODO: Define — a modern command-line WDL executor -->

**Cromwell**
<!-- TODO: Define — an open-source workflow execution engine developed by the Broad Institute -->

**miniWDL**
<!-- TODO: Define — a lightweight local WDL execution engine -->

## Infrastructure

**Rhino**
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
