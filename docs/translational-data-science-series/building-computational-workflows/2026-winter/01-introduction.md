# Introduction to Workflows

# Introduction to Computational Workflows

Many research analyses involve running the **same series of steps repeatedly** across multiple samples or datasets.  
Computational workflows help organize and automate these processes so that analyses become **scalable, reproducible, and easier to share**.

This Deep Dive introduces the basic ideas behind workflows and how they are implemented using **WDL (Workflow Description Language)**.

---

# What is a Workflow?

A **workflow** describes the set of steps needed to transform **input data into results**.

In practice, this means defining a series of tasks that are executed in a specific order.

Each task performs a specific operation.

A workflow connects these steps so that outputs from one step become inputs for the next.

---

# Why Use a Workflow?

Workflows provide several advantages when running computational analyses.

## Scalable
Workflows allow analyses to run across **many samples at once**.

Instead of manually running commands repeatedly, workflows can distribute work across **parallel compute resources** such as HPC clusters or cloud systems.

Example:
- Running the same analysis on hundreds of sequencing samples

---

## Reproducible
Workflows define **exact steps and parameters** used during analysis.

Because the process is explicitly described, running the workflow again will produce the **same results**, assuming the same inputs.

This helps ensure:

- consistent analyses  
- transparent methods  
- easier troubleshooting  

---

## Shareable
Workflows can be **shared across labs and teams**.

Instead of explaining a complex analysis verbally or through scattered scripts, the workflow itself becomes a **portable description of the analysis**.

Other researchers can run the same workflow using their own data.

---

# When Should You Use a Workflow?

Workflows are most useful when analyses follow a **repeatable structure**.

## Good Candidates for Workflows

Use a workflow when an analysis is:

- **Repetitive**  
- **Multi-step**  
- **Multi-sample**  
- Needs to **scale to large datasets**  
- Needs to be **reproducible**

---

## Situations Where a Workflow May Not Be Needed

Workflows may be unnecessary when:

- You are **still exploring an analysis**
- The task is **small or single-step**
- The analysis is **temporary**
- The process is **highly experimental**

Often, workflows are created **after an analysis pattern becomes stable and repeatable**.

---

# Writing Workflows with WDL

Workflows are typically written using **workflow languages**, which describe how tasks should run and how they connect together.

In this Deep Dive we focus on **WDL (Workflow Description Language)**.

WDL is widely used in genomics and bioinformatics because it is:

### Readable
WDL workflows are written as **step-by-step instructions**, making them easier to understand than large scripts.

### Modular
Individual tools are organized into **tasks**, which can be reused across workflows.

### Designed for Genomics Pipelines
WDL was designed specifically to support **large-scale bioinformatics analyses**, where workflows may run across many samples on HPC or cloud systems.

---

# Getting Started with WDL Workflows

Running a WDL workflow typically involves **three key files**.

## `inputs.json`

This file defines **what data will be used**.

It includes:

- input files (FASTQs, BAMs, etc.)
- file paths
- parameters required for the workflow

Think of this as the **ingredients for the analysis**.

---

## `options.json`

This file defines **how the workflow should run**.

It specifies:

- compute environment (HPC or cloud)
- memory and resource requirements
- where outputs should be written

This is similar to the **equipment needed for a recipe**.

---

## `workflow.wdl`

This file defines the **workflow itself**.

It contains:

- the tasks that will run
- the order of execution
- dependencies between steps
- how inputs become outputs

In other words, it describes the **instructions for the analysis**.

---

# Summary

Computational workflows help researchers move from **raw data to results** in a structured and reproducible way.

They allow analyses to be:

- automated
- scalable
- reproducible
- shareable

---

**Previous:** [← Pre-Work](00-pre-work.md) | **Next:** [WDL Concepts →](02-hello-world.md)
