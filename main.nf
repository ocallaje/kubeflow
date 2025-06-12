#!/usr/bin/env nextflow

process sayHello {
    container 'debian:bullseye-slim'

    input:
    val x

    output:
    stdout

    script:
    """
    #!/bin/bash
    echo '${x} world!'
    """
}

workflow {
    //Channel.of('Bonjour', 'Ciao', 'Hello', 'Hola') | sayHello | view
    sayHello("Hella")
}