#!/bin/bash

set -e

# Check if the S3 bucket exists and import it into Terraform state
if aws s3api head-bucket --bucket terraform-state-bucket 2>/dev/null; then
  echo "S3 bucket exists, importing into Terraform state..."
  terraform import aws_s3_bucket.terraform_state terraform-state-bucket
else
  echo "S3 bucket does not exist, will be created by Terraform."
fi

# Check if the DynamoDB table exists and import it into Terraform state
if aws dynamodb describe-table --table-name terraform-locks 2>/dev/null; then
  echo "DynamoDB table exists, importing into Terraform state..."
  terraform import aws_dynamodb_table.terraform_locks terraform-locks
else
  echo "DynamoDB table does not exist, will be created by Terraform."
fi
