aws_region   = "us-east-1"
repo_name    = "my-node-ecr"
scan_on_push = true

ami_id            = "ami-02457590d33d576c3"
instance_type     = "t2.micro"
instance_name     = "devops-ec2-instance"
key_name          = "deployer_key"
allowed_ssh_cidrs = ["0.0.0.0/0"]
name              = "devops-ec2"
tags = {
  Environment = "dev"
  Project     = "ECR-EC2-Deployment"
}
