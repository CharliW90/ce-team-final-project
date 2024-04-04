output "aws_eks_kubectl_setup" {
  value = "aws eks --region eu-west-2 update-kubeconfig --name ${module.eks_cluster.name}"
}