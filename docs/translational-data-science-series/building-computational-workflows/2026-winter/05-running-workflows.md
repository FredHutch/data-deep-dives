# Module 5: Running Workflows

> How to execute WDL workflows using PROOF. Using the real-world workflow from Module 3 as our hands-on example.

## Before You Start

- Ensure you have **cluster access**

- Ensure you're on the **Fred Hutch network** or connected via **VPN**.

- Download the **workflow files** from [GitHub](https://github.com/FredHutch/data-deep-dives/tree/main/docs/translational-data-science-series/building-computational-workflows/2026-winter/wdls):

    - `sra-salmon.wdl`
    - `ww-sra-salmon-inputs.json`
    - `options.json`

- (Optional) [Map your cluster folders](https://sciwiki.fredhutch.org/scicomputing/store_posix/#how-to-access-fred-hutch-storage) to your local file system

## Running a WDL using PROOF Workbench

PROOF Workbench lets you submit and monitor WDL workflows on the Fred Hutch cluster.

1. **Log in** to [PROOF Workbench](https://pwb.fredhutch.org/)

2. **Start a server**
    1. Ensure the arrows under "Before you can click to start a server" are green. 
    2. Click **Start a server** and select **Quick Start**.
    3. Click **Ok** to proceed with defaults.
    4. Wait for the server to start (may take 2-5 minutes). Once started, the arrows under "After you click to start a server" should be green.

3. **Validate your workflow (optional):** Auto-check for typos and other major issues.
    1. Click the **Validate** tab at the top.
    2. Under "Upload WDL File (required)" click **Choose File** and select `sra-salmon.wdl`.
    3. Under "Upload Consolidated Input JSON (optional)" click **Choose File** and select `ww-sra-salmon-inputs.json`.
    4. Click **Validate**.

4. **Submit your workflow**
    1. Click the **Submit** tab at the top.
    2. Under "Upload WDL File (required)" click **Choose File** and select `sra-salmon.wdl`.
    3. Under "First Input JSON (optional)" click **Choose File** and select `ww-sra-salmon-inputs.json`.
    4. Under "Workflow Options JSON (optional)" click **Choose File** and select `options.json`.
    5. Click **Submit**.

5. **Track your workflow**
    1. Click the **Workflows** tab at the top.
    2. Adjust the "Date range" dropdown to a range other than the past 30 days (optional).
    3. Click on the most recent **sra_salmon** tile. These tiles are named for the workflow inside the WDL. By default, the most recent submissions are at the top.
    4. Go to the **Jobs** tab to see the status of task calls. You'll see one tile per task execution. For this workflow:
        - `build_index` runs once (before the scatter)
        - `fastqdump` and `quantify` each run three times (once per SRA ID, in parallel)
        - `merge_results` runs once (after the scatter)
    5. Go to the **Outputs** tab to see the full paths to where the workflow outputs are saved.
        - By default, if you don't include an `options.json`, outputs are saved to your `/hpc/temp/` folder and are organized by task call.
        - If you include an `options.json` outputs are saved to the folder you specify in `final_workflow_outputs_dir`.
    6. Go to the **Troubleshoot** tab to see relevant error messages for failed workflows.
    7. View your output files via Finder or File Explorer if you've mapped your cluster folders to your local filesystem. Otherwise, access your files via the command-line.

---

**Previous:** [← Customizing Workflows](04-customizing-workflows.md) | **Next:** [Common Pitfalls →](06-pitfalls.md)
