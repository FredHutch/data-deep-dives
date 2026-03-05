# Module 2: Hello World Workflow

> Walking through a "Hello World" example to understand the fundamental parts of a WDL workflow.

---

## The Workflow Skeleton

Let's jump into a "Hello World" example and walk through each piece. Here's the full workflow:

```wdl
version 1.0

workflow hello_world {
  meta {
    description: "Writes a personalized greeting to a file"
    outputs: {
      out_file: "A file containing a personalized greeting and your favorite number"
    }
  }

  parameter_meta {
    your_name: "Name to greet"
    your_number: "Your favorite number"
  }

  input {
    String your_name = "Fred"
    Int your_number = 29
  }

  call greeting {
    input:
      name = your_name,
      number = your_number
  }

  output {
    File out_file = greeting.out
  }
}
```

Every WDL workflow follows a consistent structure. Let's break it down from top to bottom:

### Metadata (`meta` and `parameter_meta`)

At the top, we have a metadata section that describes what the workflow does and what the inputs and outputs represent. This section isn't strictly required, but it's extremely helpful for future users — or even yourself a couple months down the road.

### Inputs (`input`)

Next, we clearly define what users should provide as input and what data types those inputs should be. In this case, we're providing a name via a `String` and a favorite number via an `Int`. WDL's type system helps catch errors early — if someone accidentally passes a decimal number where an integer is expected, WDL will flag it before the workflow even runs.

### Task Calls (`call`)

From there, we call the relevant tasks to perform on our inputs. Here, we're calling a task called `greeting` and piping in the relevant inputs. You can think of this as the "what to do" section of the workflow.

### Outputs (`output`)

Finally, the output section defines what the workflow should return as final results. In this case, we want the greeting file produced by the `greeting` task.

The overall result is a **human-readable overview** of what the workflow is doing — a clear path from inputs to execution to outputs.

---

## Defining a Task

The natural next question is: how do we define the `greeting` task that the workflow calls? In WDL, tasks are typically written in the same file as the workflow, just below it. So everything you see here — the workflow and the task — lives in a single `.wdl` script. (Later, in [Module 3](03-real-world-workflow.md), we'll see how you can also import tasks from separate files or even from GitHub.)

Tasks have a very similar structure to workflows, just zoomed in to the building-block level:

```wdl
task greeting {
  meta {
    description: "Writes a personalized greeting to a file"
    outputs: {
      out: "A file containing a personalized greeting and your favorite number"
    }
  }

  parameter_meta {
    name: "Name to greet"
    number: "Your favorite number"
  }

  input {
    String name
    Int number
  }

  command <<<
    echo "Hello, ~{name}!" > "~{name}.txt"
    echo "Your favorite number is ~{number}" >> "~{name}.txt"
  >>>

  output {
    File out = "~{name}.txt"
  }

  runtime {
    docker: "getwilds/awscli:2.27.49"
    memory: "2 GB"
    cpu: 1
  }
}
```

Again, we see the same familiar sections at the top — `meta` and `parameter_meta` for documentation, and `input` for defining what the task receives. But tasks add two important new sections:

### Command (`command`)

The `command` section defines exactly what should be run on the command line within the task. Think of it as writing directly on the command line. In this example, it's a simple `echo` statement that prints "Hello, Taylor!" to a text file — but you can adapt this to run whatever computation you need, whether that's a bioinformatics tool, a Python script, or anything else.

Notice the `~{name}` syntax — this is how WDL interpolates input variables into your command. Anything inside `~{ }` gets replaced with the actual value at runtime.

### Runtime (`runtime`)

The `runtime` section defines the computing environment the task should run in:

- **`memory`**: How much memory the task requires (e.g., `"2 GB"`)
- **`cpu`**: How many CPUs to allocate (e.g., `1`)
- **`docker`**: What Docker container image to use, which determines what tools are installed and available during execution

The Docker container is what makes workflows truly reproducible — it ensures the same software versions are used every time, regardless of where the workflow runs. This does usually require knowing which Docker image to use, but the [WILDS Docker Library](https://sciwiki.fredhutch.org/datascience/wilds_docker/) maintains a large collection of pre-built images that you can use right away, and the team is accepting requests for more. You can browse available images directly on [DockerHub](https://hub.docker.com/u/getwilds).

---

## Putting It All Together

Together, the workflow and task form a clear, linear path:

**Inputs &rarr; Execution &rarr; Outputs**

with an emphasis on readability and reproducibility at every step. The workflow describes *what* to do at a high level, while each task defines *how* to do it in detail.

In the [next section](03-real-world-workflow.md), we'll see how this same structure scales to handle real-world bioinformatics pipelines with multiple tasks and many samples.

---

**Previous:** [&larr; Introduction](01-introduction.md) | **Next:** [A Real-World Workflow &rarr;](03-real-world-workflow.md)
