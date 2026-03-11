# Module 6: Common Pitfalls

> Tips for diagnosing errors and avoiding common issues with WDL workflows.

---

## Best Practices

### Test, Then Scale

Always run your workflow on a small number of samples first (2–3) before unleashing it on your full dataset. This saves you from burning through compute time on a bug that would have shown up immediately. Once you're confident things look right, scale up.

### Always Check the Logs

Workflow and server logs contain a ton of useful information when things go wrong. Get in the habit of checking them — they'll usually point you right at the problem.

### Spot-Check Your Outputs

Just because a workflow completed successfully doesn't mean it did what you expected. Take a minute to look at your output files and make sure they look reasonable. A workflow can "succeed" while producing empty files or unexpected results.

### Verify Your Jobs Are Running

After submitting a workflow, log into Rhino and confirm that your WDL tasks are actually running. It's a quick sanity check that can save you from waiting on a job that never started.

### Ask for Help Early

If you're stuck, reach out on Slack (`#workflow-managers`) or email [datascience@fredhutch.org](mailto:datascience@fredhutch.org). Chances are we've seen the issue before and can get you unstuck quickly.

---

## Common Gotchas

### Resource Limits

If a task fails unexpectedly, check whether you've allocated enough memory and CPUs in the `runtime` block. A task that runs fine on a small test file might run out of memory on a full-sized dataset. When in doubt, start generous and scale down once you know what your task actually needs.

### File Paths Inside Docker

Remember that your tasks run inside a Docker container, not on your local machine. File paths that work on Rhino won't necessarily exist inside the container. Make sure any reference files are passed in as WDL `File` inputs so they get properly localized into the container's working directory.

---

## When WDL Might Be Overkill

WDL is great for reproducible, scalable pipelines — but it's not always the right tool for the job. For basic analyses with just 1–2 steps on a handful of samples for your own lab, a notebook or shell script is probably simpler and totally fine. Notebooks are still a great choice for prototyping and exploratory work; WDL is where you go when you need things to scale and be reproducible.

---

## A Note on Docker and Alternatives

The emphasis on reproducibility in WDL does require Docker containers, which can feel like a hurdle if you're new to them. But you don't have to build your own from scratch! The [WILDS Docker Library](https://sciwiki.fredhutch.org/datascience/wilds_docker/) has a growing collection of pre-built images, and the team can help you put one together if you need something custom.

Also worth noting: WDL isn't the only workflow language out there. [Nextflow](https://www.nextflow.io/) is another popular option that works great, though the learning curve tends to be a bit steeper. We chose to focus on WDL for this workshop, but if you're curious about Nextflow, we're happy to chat about the tradeoffs.

---

> Learn more about:
> [Office of the Chief Data Officer](https://ocdo.fredhutch.org/) |  [WILDS](https://getwilds.org/)

--- 

**Previous:** [&larr; Running Workflows](05-running-workflows.md) | **Next:** [Resources & Next Steps &rarr;](07-resources.md)
