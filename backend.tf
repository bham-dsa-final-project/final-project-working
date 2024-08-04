terraform {
  backend "s3" {
    bucket         = "terraform-state-bucket2121"
    key            = "terraform.tfstate"
    region         = "eu-west-2"
    encrypt        = true
    dynamodb_table = "terraform-state-lock-dynamodb"
  }
}
