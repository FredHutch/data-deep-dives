# Module 3: Hello World Walkthrough

> Your first WDL workflow — understanding every piece, from inputs to outputs.

---

## Overview

<!-- TODO: Introduce the "Hello World" workflow — a minimal, self-contained WDL designed to teach the basics (~30 second runtime) -->
<!-- TODO: Emphasize that this workflow is intentionally simple — no bioinformatics knowledge required -->

## The WDL File

<!-- TODO: Show the full Hello World WDL inline — a single-file workflow with one task
  that takes a name (String) and greeting (String), echoes a message, and writes it to a file.
  No imports, no scatter, no structs — just the core building blocks. -->

### Breaking It Down

#### The `workflow` Block

<!-- TODO: Walk through the workflow block line by line -->

#### The `task` Block

<!-- TODO: Walk through the task block:
  - input section — what goes in (e.g., a String name, a String greeting)
  - command section — what it does (e.g., echo "${greeting}, ${name}!" > output.txt)
  - output section — what comes out (e.g., File greeting_file)
  - runtime section — where it runs (Docker container)
-->

#### The `meta` Block

<!-- TODO: Explain the metadata and how it documents the workflow -->

## Specifying Inputs

### Understanding the `inputs.json`

<!-- TODO: Show the inputs.json for the Hello World workflow -->
<!-- TODO: Explain the format: workflow_name.variable_name = value -->

### Modifying Inputs

<!-- TODO: Walk through how to change an input value (e.g., changing the greeting message or the name) -->
<!-- TODO: Emphasize that this is how users customize workflow behavior without editing the WDL itself -->

## What's Next

Now that you understand every piece of a WDL workflow, it's time to actually run one. In the next module, you'll use the Hello World workflow as your first hands-on exercise.

---

**Previous:** [← WDL Concepts](02-wdl-concepts.md) | **Next:** [Running Workflows →](04-running-workflows.md)
