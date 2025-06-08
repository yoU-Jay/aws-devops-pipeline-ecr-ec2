module "ecr" {
  source       = "./module/ecr"
  repo_name    = var.repo_name
  scan_on_push = var.scan_on_push
}

module "ec2" {
  source            = "./module/ec2"
  ami_id            = var.ami_id
  instance_type     = var.instance_type
  instance_name     = var.instance_name
  subnet_id         = local.first_subnet_id
  vpc_id            = data.aws_vpc.default.id
  key_name          = var.key_name
  user_data         = file("userdata.sh")
  allowed_ssh_cidrs = var.allowed_ssh_cidrs
  tags              = var.tags
  name              = var.name
}