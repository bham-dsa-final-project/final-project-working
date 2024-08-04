provider "aws" {
  region = "eu-west-2"
}

resource "aws_s3_bucket" "terraform_state" {
  bucket = "terraform-state-bucket2121"

  lifecycle {
    prevent_destroy = true
  }

  tags = {
    Name        = "terraform-state-bucket2121"
    Environment = "dev"
  }
}
