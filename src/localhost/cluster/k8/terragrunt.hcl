
terraform {
    source = "./../../../../../infrastructure-modules/src/localhost/cluster/k8"
}

generate "provider" {
    contents = <<EOF
    terraform {
        required_providers {
            kubernetes = {
                source = "hashicorp/kubernetes"
                version = "2.23.0"
            }
        }
        required_version = "1.5.6"
    }
    provider "kubernetes" {
        config_path = "~/.kube/config"
        config_context = "minikube"
    }


    EOF
    if_exists = "skip"
    path = "providers.tf"
}

inputs = {
    kubernetes_namespace_name = "development"
    kubernetes_namespace_labels = {
        environment = "development"
    }
}