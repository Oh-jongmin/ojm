output "eks_cluster_name" {
  value = module.eks.cluster_name
}

output "eks_cluster_endpoint" {
  value = module.eks.cluster_endpoint
}

output "eks_oidc_provider_arn" {
  value = module.eks.oidc_provider_arn
}

output "vpc_id" {
  value = aws_vpc.pnp.id
}

output "bastion_public_ip" {
  description = "Public IP of the bastion server"
  value       = aws_instance.bastion.public_ip
}

output "mgmt_private_ip" {
  description = "Private IP of the mgmt server"
  value       = aws_instance.mgmt.private_ip
}

output "eksctl_mgmt_role_arn" {
  description = "ARN of the MGMT role"
  value       = aws_iam_role.eksctl_mgmt_role.arn
}
