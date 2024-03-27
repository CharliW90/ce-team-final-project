output "name" {
  description = "Cluster Name"
  value = module.eks.cluster_name
}

output "endpoint" {
  description = "EKS Control Plane endpoint"
  value = module.eks.cluster_endpoint
}

output "security_group_id" {
  description = "Security Group IDs attached to control plane"
  value = module.eks.cluster_security_group_id
}

output "cli_assume_role_command" {
  description = "AWS CLI command to run in order to assume the relevant role for kubectl interaction with the cluster"
  value = "aws sts assume-role --role-arn ${module.eks.cluster_iam_role_arn} --role-session-name eks-admin-$(whoami)-session"
}