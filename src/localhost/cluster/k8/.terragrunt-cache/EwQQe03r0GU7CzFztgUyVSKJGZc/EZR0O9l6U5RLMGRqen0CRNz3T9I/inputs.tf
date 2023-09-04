variable "kubernetes_namespace_name" {
  description = "The name of the Kubernetes namespace to create"
}

variable "kubernetes_namespace_labels" {
  description = "The labels to apply to the Kubernetes namespace"
  type        = map(string)
}
