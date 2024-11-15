################################################################################
# Terraform Remote State Amazon S3 Bucket
# https://registry.terraform.io/modules/StratusGrid/terraform-state-s3-bucket-centralized-with-roles/aws/latest
################################################################################

#trivy:ignore:AVD-AWS-0088
#trivy:ignore:AVD-AWS-0132
module "terraform_state" {
  source  = "StratusGrid/terraform-state-s3-bucket-centralized-with-roles/aws"
  version = "5.2.3"

  name_prefix   = "${var.org}-${var.name_prefix}-${var.env_name}"
  name_suffix   = var.name_suffix
  log_bucket_id = var.logging_bucket
  account_arns = []
  global_account_arns = []
}