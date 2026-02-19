version 1.0

workflow hello {
  meta {
    description: "Writes a personalized greeting to a file"
  }

  parameter_meta {
    your_name: "Name to greet"
    your_number: "Your favorite number"
  }

  input {
    String your_name = "Fred"
    Int your_number = 50
  }

  call greet {
    input:
      name = your_name,
      number = your_number
  }

  output {
    File out_file = greet.out
  }
}

task greet {
  meta {
    description: "Writes a personalized greeting to a file"
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
