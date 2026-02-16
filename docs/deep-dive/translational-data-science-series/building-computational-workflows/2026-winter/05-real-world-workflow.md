# Module 5: A Real-World Workflow

> Walkthrough of the `ww-sra-star` pipeline — downloading RNA-seq data and performing STAR alignment.

---

## Overview

<!-- TODO: Introduce the ww-sra-star pipeline — a real-world, multi-step workflow from the WILDS WDL Library -->
<!-- TODO: Mention the approximate runtime (~2 hours) and that results were pre-run for the demo -->
<!-- TODO: Contrast with the Hello World workflow from Module 3 — this is what real workflows look like -->

## What This Pipeline Does

<!-- TODO: Describe the biological context:
  - Downloading raw sequencing reads from NCBI's Sequence Read Archive (SRA)
  - Aligning reads to a reference genome using the STAR aligner (two-pass method)
  - Producing aligned BAM files ready for downstream analysis
-->

## Introducing the WILDS WDL Library

<!-- TODO: Brief context on where this pipeline comes from:
  - The WILDS WDL Library is a curated collection of reusable WDL modules and pre-built pipelines
  - Link to the GitHub repo: https://github.com/getwilds/wilds-wdl-library
  - Explain the modules vs. pipelines distinction:
    - Modules: reusable, tool-specific task collections (e.g., ww-sra, ww-star, ww-fastqc)
    - Pipelines: pre-built workflows that chain modules together (e.g., ww-sra-star)
  - Point to Module 8 (Resources) for a deeper dive on navigating the library
-->

## Pipeline Architecture

### Modules Used

<!-- TODO: List the modules this pipeline imports:
  - ww-sra (data download)
  - ww-star (alignment)
  - Any additional modules
-->

### Workflow Diagram

<!-- TODO: Add a visual diagram or textual description of the pipeline steps and data flow -->

### The Import Statements

<!-- TODO: Show and explain the import lines — how this pipeline pulls in modules via GitHub URLs -->
<!-- TODO: Contrast with the self-contained Hello World — imports let you build on shared, tested components -->
<!-- TODO: Explain version pinning (commit/tag references in URLs) -->

## Understanding the Inputs

### Required Inputs

<!-- TODO: Walk through the key inputs:
  - SRA accession numbers (Array[String])
  - Reference genome location
  - Any other required parameters
-->

### The `inputs.json`

<!-- TODO: Show a concrete inputs.json example for this pipeline -->
<!-- TODO: Explain each field -->

### The `options.json`

<!-- TODO: Show and explain the options.json (output directory, call caching, etc.) -->

## Scatter-Gather in Action

<!-- TODO: Explain how this pipeline uses the scatter-gather pattern:
  - Scatter: each SRA accession is processed independently in parallel
  - Gather: results are collected after all samples complete
-->
<!-- TODO: Relate back to the concept introduced in Module 2 -->

## Examining the Results

### Output Folder Structure

<!-- TODO: Show the organized output directory layout — one folder per sample -->

### Key Output Files

<!-- TODO: Describe the important output files:
  - Aligned BAM files
  - STAR alignment logs/statistics
  - Any QC metrics
-->

### Interpreting Alignment Statistics

<!-- TODO: Brief guide on what to look for in STAR output logs -->

## Monitoring and Reading Logs

<!-- TODO: This is the main coverage of monitoring and log reading — Module 4 covers only the
  basics (terminal output for a quick Hello World run). Here, walk through the full picture
  with a real multi-step, multi-sample workflow:
  - Checking progress in PROOF or Sprocket — identifying which tasks have completed vs. are still running
  - Workflow-level logs: where to find them, what they tell you about overall execution
  - Task-level logs: stdout and stderr for individual tasks — where they live and what to look for
  - Example: reading STAR's stderr output to confirm alignment completed successfully
  - What to do if a task fails — how the logs point you to the problem (more in Module 7)
-->

---

**Previous:** [← Running Workflows](04-running-workflows.md) | **Next:** [Customizing Workflows →](06-customizing-workflows.md)
