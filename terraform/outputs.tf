output "aws_cli_assume_role" {
  value = module.eks_cluster.cli_assume_role_command
}

output "aws_eks_kubectl_setup" {
  value = "aws eks --region eu-west-2 update-kubeconfig --name ${module.eks_cluster.name}"
}