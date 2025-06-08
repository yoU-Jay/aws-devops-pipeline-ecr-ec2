terraform {
  backend "s3" {
    bucket = "devops-ec2-ecr"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}