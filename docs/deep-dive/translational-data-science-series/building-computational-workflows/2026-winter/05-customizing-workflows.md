# Module 5: Customizing Workflows

> How to modify and extend existing pipelines to fit your needs.

---

## Why Customize?

<!-- TODO: Motivate — pre-built pipelines are great starting points, but real research often requires tweaks -->

## Modifying Inputs

### Changing Parameters

<!-- TODO: Simplest form of customization — adjusting inputs.json values:
  - Swapping sample accessions
  - Pointing to a different reference genome
  - Adjusting runtime parameters (memory, CPU)
-->

### Using Optional Inputs

<!-- TODO: Explain how optional inputs let you toggle features without changing the WDL -->

## Adding Modules to a Pipeline

### Example: Adding FastQC to `ww-sra-star`

<!-- TODO: Step-by-step walkthrough of extending a pipeline:
  1. Identify the module to add (ww-fastqc)
  2. Add the import statement (GitHub URL)
  3. Add a call to the new task in the workflow block
  4. Wire up inputs — connect the output of an existing task to the input of the new task
  5. Declare any new outputs
  6. Update inputs.json if needed
-->

### Example: Adding DESeq2 for Differential Expression

<!-- TODO: Show a more advanced extension:
  - Adding ww-deseq2 after STAR alignment
  - Explain how outputs chain together
-->

## Swapping Modules

<!-- TODO: Explain how to replace one module with another:
  - e.g., swapping ww-star for ww-salmon
  - Important: emphasize that this isn't just a software swap — it's a fundamentally
    different analysis approach (genome alignment vs. transcript-level pseudo-alignment/quantification).
    Users need to understand they're changing the science, not just the tool.
  - Key considerations: matching input/output types, understanding what the new module produces
-->

## Creating a New Pipeline from Modules

<!-- TODO: High-level guidance on building a brand-new pipeline:
  - Start with a skeleton workflow block
  - Import the modules you need
  - Wire them together
  - Test incrementally
-->

## Need Something More? The WILDS WDL Development Program

<!-- TODO: Brief pointer for researchers who want to go beyond DIY customization:
  - The WILDS WDL Development Program (https://sciwiki.fredhutch.org/datascience/wilds_workflow_dev/)
    is a free service where OCDO helps you build a production WDL workflow from your existing scripts
  - Good fit if your analysis has broad applicability and you're willing to share it openly
  - Link to Module 7 (Contributing to WILDS) for full details
-->

## Best Practices

<!-- TODO: Tips for customization:
  - Pin import versions for reproducibility
  - Test changes with small datasets first
  - Use call caching to avoid re-running unchanged steps
  - Keep your custom WDL in version control
-->

---

**Previous:** [← A Real-World Workflow](04-real-world-workflow.md) | **Next:** [Troubleshooting →](06-troubleshooting.md)
