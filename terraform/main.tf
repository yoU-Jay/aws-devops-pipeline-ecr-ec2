module "ecr" {
  source       = "./module/ecr"
  repo_name    = var.repo_name
  scan_on_push = var.scan_on_push
}

module "ec2" {
  source         = "./module/ec2"
  ami_id         = var.ami_id
  instance_type  = var.instance_type
  instance_name  = var.instance_name
}