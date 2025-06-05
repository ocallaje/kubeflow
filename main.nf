#!/usr/bin/env nextflow

process sayHello {
    container: 'alpine:latest'
    
    input:
    val x

    output:
    stdout

    script:
    """
    echo '${x} world!'
    """
}

workflow {
    Channel.of('Bonjour', 'Ciao', 'Hello', 'Hola') | sayHello | view
}