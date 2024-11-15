# These variables are called when running the following command:
# terraform init -backend-config=./init-tfvars/dev.tfvars
bucket         = "company-account-1-dev-remote-state-backend"
key            = "company-account-1-dev-remote-state-backend.tfstate"
dynamodb_table = "company-account-1-dev-remote-state-backend"
kms_key_id     = "arn:aws:kms:us-east-2:381511845811:key/fb0bf671-de40-487c-893c-52d2be288205"