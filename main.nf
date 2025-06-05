process sayHello {
    container 'alpine:latest'

    output:
    stdout

    script:
    """
    echo Hello from Kubernetes!
    sleep 600
    """
}
