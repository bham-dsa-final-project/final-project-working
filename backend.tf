# terraform {
#   backend "s3" {
#     bucket         = "infra-as-code"
#     key            = "terraform.tfstate"
#     region         = "eu-west-2"
#     encrypt        = true
#     dynamodb_table = "infra-lock-table"
#   }
# }
