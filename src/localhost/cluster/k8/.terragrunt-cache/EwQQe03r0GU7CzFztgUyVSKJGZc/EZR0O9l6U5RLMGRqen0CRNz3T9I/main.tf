
resource "kubernetes_namespace" "development" {
  metadata {
    name   = var.kubernetes_namespace_name
    labels = var.kubernetes_namespace_labels
  }
}
