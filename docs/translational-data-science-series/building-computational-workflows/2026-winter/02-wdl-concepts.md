# Module 2: WDL Concepts — A Hello World Walkthrough

> The building blocks of a WDL workflow — learned hands-on through a minimal example.

---

## Overview

<!-- TODO: Introduce the "Hello World" workflow as the teaching vehicle for this module -->
<!-- TODO: Emphasize that this workflow is intentionally simple — no bioinformatics knowledge required (~30 second runtime) -->
<!-- TODO: Frame the approach: we'll learn every core WDL concept by walking through a real, working example -->

## The Hello World WDL

<!-- TODO: Show the full Hello World WDL inline — a single-file workflow with one task
  that takes a name (String) and greeting (String), echoes a message, and writes it to a file.
  No imports, no scatter, no structs — just the core building blocks. -->

## Breaking It Down

<!-- TODO: High-level diagram or description of the structure of a .wdl file -->
<!-- TODO: Explain the relationship between workflows and tasks -->

### The `workflow` Block

<!-- TODO: Walk through the Hello World workflow block line by line -->
<!-- TODO: Explain what a workflow block does — orchestrates tasks, defines execution order -->

### The `task` Block

<!-- TODO: Walk through the Hello World task block line by line:
  - input section — what goes in (e.g., a String name, a String greeting)
  - command section — what it does (e.g., echo "${greeting}, ${name}!" > output.txt)
  - output section — what comes out (e.g., File greeting_file)
  - runtime section — where it runs (Docker container)
-->

### The `meta` and `parameter_meta` Blocks

<!-- TODO: Explain the Hello World metadata and how it documents the workflow and its parameters -->

## Inputs and Outputs

### Input Types

<!-- TODO: Cover common WDL types: String, Int, File, Boolean, Array, etc. -->
<!-- TODO: Explain required vs. optional inputs -->
<!-- TODO: Use Hello World inputs as concrete examples of String type -->

### The `inputs.json` File

<!-- TODO: Show the inputs.json for the Hello World workflow -->
<!-- TODO: Explain the format: workflow_name.variable_name = value -->

### Modifying Inputs

<!-- TODO: Walk through how to change an input value (e.g., changing the greeting message or the name) -->
<!-- TODO: Emphasize that this is how users customize workflow behavior without editing the WDL itself -->

### The `options.json` File

<!-- TODO: Explain what options.json controls (execution options, output directories, etc.) -->

### Outputs

<!-- TODO: Explain how outputs are declared and where they end up -->

## Key Patterns (Preview)

<!-- TODO: Brief intro — these are patterns you'll see in real-world workflows (covered more in later modules) -->

### Scatter-Gather

<!-- TODO: Explain the scatter-gather pattern — running the same task on multiple inputs in parallel -->
<!-- TODO: Use a concrete example (e.g., aligning multiple samples) -->

### Imports

<!-- TODO: Explain how WDL files can import tasks/workflows from other files -->
<!-- TODO: Show how WILDS uses GitHub URL imports for modularity -->

### Call Caching

<!-- TODO: Explain how execution engines can skip re-running tasks whose inputs haven't changed -->

## Docker and Reproducibility

<!-- TODO: Briefly explain why tasks specify Docker containers -->
<!-- TODO: Mention the WILDS Docker Library and how containers ensure consistent environments -->

## What's Next

Now that you understand every piece of a WDL workflow, it's time to actually run one. In the next module, you'll use the Hello World workflow as your first hands-on exercise.

---

**Previous:** [← Introduction](01-introduction.md) | **Next:** [Running Workflows →](03-running-workflows.md)
