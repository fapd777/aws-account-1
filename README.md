<!-- BEGIN_TF_DOCS -->

# aws-account-1

This repository is meant to hold all of the relevant stateful Terraform code
for Fernando Pedraza AWS account.

**AWS account environment(s):** Development (dev)\
**AWS account ID:** 381511845811

## Deployment

To quickly initialize the current Terraform configuration and create or update
the associated infrastructure, try the following commands:

> **_NOTE:_**  You must have a valid AWS session token for the following
commands to complete successfully.

### Development (dev)

Prepare your working directory for other Terraform commands:
```bash
terraform init -backend-config=./init-tfvars/dev.tfvars
```
Show changes required by the current configuration:
```bash
terraform plan -var-file ./apply-tfvars/dev.tfvars
```
Create or update infrastructure:
```bash
terraform apply -var-file ./apply-tfvars/dev.tfvars
```
 
## Documentation

This repo is self documenting via Terraform Docs, please see the note at the
bottom.

The `.config/.terraform-docs.yml` file auto generates the `README.md` file

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5.0 |

## Resources

| Name | Type |
|------|------|

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_s3_bucket_logging_us_east_2"></a> [s3\_bucket\_logging\_us\_east\_2](#module\_s3\_bucket\_logging\_us\_east\_2) | StratusGrid/s3-bucket-logging/aws | 2.1.6 |
| <a name="module_terraform_state"></a> [terraform\_state](#module\_terraform\_state) | StratusGrid/terraform-state-s3-bucket-centralized-with-roles/aws | 5.2.3 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_env_name"></a> [env\_name](#input\_env\_name) | Environment name string to be used for decisions and name generation | `string` | n/a | yes |
| <a name="input_logging_bucket"></a> [logging\_bucket](#input\_logging\_bucket) | Bucket used for centralized logging. | `string` | n/a | yes |
| <a name="input_name_prefix"></a> [name\_prefix](#input\_name\_prefix) | String to use as prefix on object names | `string` | n/a | yes |
| <a name="input_name_suffix"></a> [name\_suffix](#input\_name\_suffix) | String to append to object names. This is optional, so start with dash if using. | `string` | `""` | no |
| <a name="input_org"></a> [org](#input\_org) | Organization name | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | AWS Region to target | `string` | n/a | yes |
| <a name="input_source_repo"></a> [source\_repo](#input\_source\_repo) | name of repo which holds this code | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_account_id"></a> [account\_id](#output\_account\_id) | Account which terraform was run on |
| <a name="output_common_tags"></a> [common\_tags](#output\_common\_tags) | tags which should be applied to all taggable objects |
| <a name="output_env_name"></a> [env\_name](#output\_env\_name) | string to append to all resource names |
| <a name="output_name_prefix"></a> [name\_prefix](#output\_name\_prefix) | string to prepend to all resource names |
| <a name="output_org"></a> [org](#output\_org) | string to prepend to resource name - optional |
| <a name="output_region"></a> [region](#output\_region) | region being used |

---

> **_NOTE:_**  Manual changes to the README will be overwritten when the
documentation is updated. To update the documentation, run:
```bash
terraform-docs --config .config/.terraform-docs.yml .
```
<!-- END_TF_DOCS -->