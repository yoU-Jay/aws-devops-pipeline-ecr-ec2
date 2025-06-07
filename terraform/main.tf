module "ecr" {
  source = "./module/ecr"
  repo_name     = var.repo_name
  scan_on_push  = var.scan_on_push
}