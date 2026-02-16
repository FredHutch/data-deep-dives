# Module 4: Running Workflows

> How to execute WDL workflows using Sprocket and PROOF — with the Hello World workflow from Module 3 as our hands-on example.

---

## Execution Engines Overview

<!-- TODO: Briefly explain what an execution engine does — takes a WDL + inputs and runs the workflow -->
<!-- TODO: Mention the engines available: Sprocket, Cromwell, miniWDL -->

## Sprocket (Command Line)

### What is Sprocket?

<!-- TODO: Describe Sprocket — a modern, WDL-native command-line executor -->
<!-- TODO: Emphasize that Sprocket is broadly available and not tied to any specific institution -->

### Installing / Accessing Sprocket

<!-- TODO: How to install or access Sprocket (platform-agnostic instructions) -->
<!-- TODO: Fred Hutch-specific note: also available on the cluster -->

### Validating Before You Run

<!-- TODO: Briefly introduce Sprocket's validation capabilities as a pre-run best practice:
  - Syntax checking and input validation
  - Catching errors early before submitting a potentially long-running workflow
  - See Module 7 for more on using validation as a troubleshooting tool
-->

### Running the Hello World Workflow with Sprocket

<!-- TODO: Walk through running the Hello World workflow via the command line:
  sprocket run hello_world.wdl --inputs inputs.json
-->
<!-- TODO: Show the terminal output as it runs -->

### Monitoring and Output

<!-- TODO: Keep this brief — Hello World finishes in seconds, so focus on:
  - Terminal output during execution (what success looks like)
  - Where the output file lands
  Note: Detailed log reading and task-level debugging are covered in Module 5,
  where the longer-running real-world workflow makes those skills more meaningful.
-->

## PROOF (Point-and-Click)

### What is PROOF?

<!-- TODO: Describe PROOF — Fred Hutch's web-based interface for submitting and monitoring workflows (built on Cromwell) -->
<!-- TODO: Note that PROOF is specific to Fred Hutch — Sprocket (above) is the general-purpose option -->

### Submitting the Hello World Workflow via PROOF

<!-- TODO: Step-by-step walkthrough with screenshots, using the Hello World WDL and inputs.json from Module 3:
  1. Navigate to PROOF
  2. Upload or point to the Hello World WDL file
  3. Provide the inputs.json from Module 3
  4. Configure options (options.json)
  5. Submit the workflow
-->

### Monitoring the Run

<!-- TODO: Show how to monitor the Hello World run in PROOF:
  - Check workflow status
  - View task-level progress
  - See logs for individual tasks
-->

### Viewing Results in PROOF

<!-- TODO: Show how to access outputs once the Hello World workflow completes:
  - Where to find the output files in the PROOF UI
  - Output directory structure: top-level directory per workflow run, subdirectories per task call
  - Locating the greeting output file
-->

### Aborting a Workflow

<!-- TODO: Explain how to cancel a running workflow if needed -->

## Understanding Workflow Outputs

<!-- TODO: Now that learners have completed their first run(s), generalize the output concepts:
  - Output directory structure: top-level directory per workflow run, subdirectories per task call
  - How scattered tasks create per-sample directories (preview for Module 5)
  - Locating key output files after a run completes
  - How output organization may differ slightly between Sprocket and PROOF
-->

## Choosing Between Sprocket and PROOF

<!-- TODO: Comparison table or guidance:
  - Sprocket: CLI, broadly available, scriptable, good for automation and advanced users
  - PROOF: GUI, Fred Hutch-specific, good for beginners, visual monitoring
-->

---

**Previous:** [← Hello World Walkthrough](03-hello-world.md) | **Next:** [A Real-World Workflow →](05-real-world-workflow.md)
