variable "aws_region" {
  description = "AWS region"
  type        = string
}

variable "repo_name" {
  description = "ECR repository name"
  type        = string
}

variable "scan_on_push" {
  description = "Enable scan on image push"
  type        = bool
}