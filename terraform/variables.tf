# ECR
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

# EC2

variable "ami_id" {
  type        = string
  description = "AMI ID for EC2 instance"
}

variable "instance_type" {
  type        = string
  description = "EC2 instance type"
}

variable "instance_name" {
  type        = string
  description = "EC2 instance name tag"
}

variable "key_name" {
  description = "Key pair name for SSH"
  type        = string
}

variable "user_data" {
  description = "User data script"
  type        = string
  default     = ""
}

variable "allowed_ssh_cidrs" {
  description = "CIDR blocks allowed to SSH"
  type        = list(string)
}

variable "tags" {
  description = "Tags for resources"
  type        = map(string)
}

variable "name" {
  description = "Name prefix"
  type        = string
}
