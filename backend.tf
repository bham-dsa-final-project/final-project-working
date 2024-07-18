terraform {
  backend "s3" {
    bucket         = "terraform_state_bucket"
    key            = "terraform.tfstate"
    region         = "eu-west-2"
    encrypt        = true
    dynamodb_table = "terraform-locks"
  }
}
