module "ecr" {
  source       = "./module"
  repo_name    = var.repo_name
  scan_on_push = var.scan_on_push
}