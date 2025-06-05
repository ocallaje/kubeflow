process sayHello {
    container 'alpine:latest'
    executor 'k8s'

    output:
    stdout

    script:
    """
    echo Hello from Kubernetes!
    sleep 600
    """
}
