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

variable "ami_id" {
  type        = string
  description = "AMI ID for EC2 instance"
}

variable "instance_type" {
  type        = string
  description = "EC2 instance type"
  default     = "t2.micro"
}

variable "instance_name" {
  type        = string
  description = "EC2 instance name tag"
}