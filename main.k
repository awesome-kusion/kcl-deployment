# Import and use the contents of the external dependency 'k8s'.
import k8s.api.apps.v1 as k8core

k8core.Deployment {
    metadata = {
        name = "nginx-deployment-7"
        namespace = "default"
        labels = {app = "nginx"}
    }
    spec = {
        selector = {
            matchLabels = {app = "nginx"}
        }
        template = {
            metadata = {
                labels = {app = "nginx"}
            }
            spec = {
                containers = [
                    {
                        name = "nginx"
                        image = "nginx:1.7.5"
                        ports = [{containerPort = 82}]
                    }
                ]
            }
        }
    }
}