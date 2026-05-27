resource "helm_release" "nginx_ingress" {
  name             = "nginx-ingress"
  repository       = "https://kubernetes.github.io/ingress-nginx"
  chart            = "ingress-nginx"
  version          = "4.10.0"
  namespace        = "ingress-nginx"
  create_namespace = true

  set {
    name  = "controller.service.type"
    value = "LoadBalancer"
  }

  depends_on = [aws_eks_node_group.eks_node_group]
}