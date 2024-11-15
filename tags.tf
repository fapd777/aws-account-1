locals {
  common_tags = {
    Environment = var.env_name
    Developer   = "fernando.pedraza.1@gmail.com"
    Provisioner = "Terraform"
    SourceRepo  = var.source_repo
  }
}
