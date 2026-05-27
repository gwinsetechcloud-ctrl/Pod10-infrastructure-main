resource "helm_release" "cert_manager" {
  name             = "cert-manager"
  repository       = "https://charts.jetstack.io"
  chart            = "cert-manager"
  version          = "1.14.5"
  namespace        = "cert-manager"
  create_namespace = true

  values = [
    <<-EOT
    installCRDs: true
    EOT
  ]

  depends_on = [helm_release.nginx_ingress]
}