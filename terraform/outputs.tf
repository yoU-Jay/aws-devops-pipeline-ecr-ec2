output "ecr_repo_url" {
  description = "The URL of the created ECR repository"
  value       = module.ecr.repository_url
}

output "key_name" {
  value = aws_key_pair.deployer_key.key_name
}

output "ec2_host" {
  value = module.ec2.ec2_public_ip
}