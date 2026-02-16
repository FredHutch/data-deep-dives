# Module 2: WDL Concepts

> The building blocks of a WDL workflow — tasks, inputs, outputs, and how they fit together.

---

## Anatomy of a WDL Workflow

<!-- TODO: High-level diagram or description of the structure of a .wdl file -->
<!-- TODO: Explain the relationship between workflows and tasks -->

### The `workflow` Block

<!-- TODO: Explain what a workflow block does — orchestrates tasks, defines execution order -->
<!-- TODO: Show a minimal skeleton example -->

### The `task` Block

<!-- TODO: Explain what a task is — a unit of work with a command, inputs, outputs, and runtime -->
<!-- TODO: Describe the key sections within a task:
  - input { }
  - command <<< >>>
  - output { }
  - runtime { }
-->

### The `meta` and `parameter_meta` Blocks

<!-- TODO: Explain how metadata documents the workflow and its parameters -->

## Inputs and Outputs

### Input Types

<!-- TODO: Cover common WDL types: String, Int, File, Boolean, Array, etc. -->
<!-- TODO: Explain required vs. optional inputs -->

### The `inputs.json` File

<!-- TODO: Explain how users specify inputs via a JSON file -->
<!-- TODO: Show a simple example of an inputs.json -->

### The `options.json` File

<!-- TODO: Explain what options.json controls (execution options, output directories, etc.) -->

### Outputs

<!-- TODO: Explain how outputs are declared and where they end up -->

## Key Patterns

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

---

**Previous:** [← Introduction](01-introduction.md) | **Next:** [Hello World Walkthrough →](03-hello-world.md)
