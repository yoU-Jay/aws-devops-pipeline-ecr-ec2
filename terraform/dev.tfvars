aws_region   = "us-east-1"
repo_name    = "my-node-ecr"
scan_on_push = true

ami_id            = "ami-07b7cae50f732535f"
instance_type     = "t2.micro"
instance_name     = "devops-ec2-instance"
key_name          = "deployer_key"
user_data         = file("userdata.sh")
allowed_ssh_cidrs = ["YOUR_IP/32"]
name              = "devops-ec2"
tags = {
  Environment = "dev"
  Project     = "ECR-EC2-Deployment"
}
