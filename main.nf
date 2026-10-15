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
    greetings = channel.of('Bonjour', 'Ciao', 'Hello', 'Hola')
    sayHello(greetings)
    sayHello.out.view()
}