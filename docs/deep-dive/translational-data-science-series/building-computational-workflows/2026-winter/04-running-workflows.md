# Module 4: Running Workflows

> How to execute WDL workflows using Sprocket and PROOF — with the Hello World workflow from Module 3 as our hands-on example.

---

## Execution Engines Overview

While the WDL language describes the logistics of a particular workflow, an _execution engine_ is needed in order to actually carry out these instructions on a given computing platform. It essentially coordinates how and when to run each task throughout the workflow so you don't have to worry about it.

There are a few options available for folks to try out, but at Fred Hutch, we recommend one of two options: Sprocket (for direct execution on the command line) and PROOF (for more interactive point-and-click execution & monitoring).

## Sprocket (Command Line)

### What is Sprocket?

Sprocket is a command-line WDL executor originally developed by researchers over at St. Jude's. It's written in Rust, so it is fast and easy-to-install with lots of extra features already built in.

Cromwell and miniWDL are both reasonable options as well, but Cromwell requires a pretty complex installation/configuration in order to run workflows, and miniWDL is difficult to scale with larger HPC systems like the Fred Hutch cluster.

Plus, development of Sprocket is much more active compared to Cromwell and miniWDL, so if issues do come up, it's much more likely to be addressed in a timely fashion with Sprocket.

### Installing / Accessing Sprocket

When using the Fred Hutch cluster, installation isn't necessary, just load the pre-built Sprocket and Apptainer modules:

```
$ module load sprocket/0.19.0 Apptainer/1.1.6
$ sprocket --version
sprocket v0.19.0 (9b96d4f62 2025-11-24)
```

When running workflows directly on your laptop, it's straightforward to install Sprocket on Mac's via Homebrew (`brew install sprocket`) or on Windows via Cargo (`cargo install sprocket`), but other installation methods are available [in Sprocket's documentation](https://sprocket.bio/installation.html).

You'll also need to install Docker Desktop on your laptop to manage the underlying software environments, which can be downloaded through [Docker's website](https://www.docker.com/get-started/).

Once installed/loaded, Sprocket should behave relatively similarly no matter whether you're running on the cluster or locally.

### Validating Before You Run

If you run `sprocket --help`, you'll notice a list of possible commands to utilize with Sprocket. The two main ones to focus on for this course are `lint` and `run`.

`sprocket run` does the actual execution of a WDL workflow, but a good first step before that is `sprocket lint`. This command validates that your workflow is properly formatted and identifies issues that might cause your workflow to exit prematurely during execution.

For instance, 

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
