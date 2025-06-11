#!/usr/bin/env nextflow

process sayHello {
    container 'bash:5'

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
    Channel.of('Bonjour', 'Ciao', 'Hello', 'Hola') | sayHello | view
}