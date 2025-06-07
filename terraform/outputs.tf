output "ecr_repo_url" {
  description = "The URL of the created ECR repository"
  value       = module.ecr.repository_url
}