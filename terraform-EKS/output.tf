# Output the cluster name
output "eks_cluster_name" {
  value = aws_eks_cluster.eks_cluster.name
}

# Output the cluster endpoint
output "eks_cluster_endpoint" {
  value = aws_eks_cluster.eks_cluster.endpoint
}

# Output the kubeconfig for the cluster
output "kubeconfig" {
  value = templatefile("${path.module}/kubeconfig.tpl", {
    cluster_name = aws_eks_cluster.eks_cluster.name
    cluster_endpoint = aws_eks_cluster.eks_cluster.endpoint
    cluster_certificate_authority_data = aws_eks_cluster.eks_cluster.certificate_authority.0.data
  })
}

