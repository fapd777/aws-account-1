################################################################################
# Amazon S3 Bucket for centralized log storage. 
# https://registry.terraform.io/modules/StratusGrid/s3-bucket-logging/aws/latest
################################################################################

#trivy:ignore:AVD-AWS-0132 - Default SSE-S3 encryption used
module "s3_bucket_logging_us_east_2" {
  source      = "StratusGrid/s3-bucket-logging/aws"
  version     = "2.1.6"
  name_prefix = "${var.org}-${var.name_prefix}-${var.env_name}"
  name_suffix = "${var.name_suffix}-${var.region}"
}