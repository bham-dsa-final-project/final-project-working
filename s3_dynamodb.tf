# resource "aws_s3_bucket" "terraform_state" {
#   bucket = "terraform-state-bucket"

#   lifecycle {
#     prevent_destroy = true
#   }

#   tags = {
#     Name        = "terraform-state-bucket"
#     Environment = "dev"
#   }
# }
# resource "aws_s3_bucket_versioning" "terraform_state_versioning" {
#   bucket = aws_s3_bucket.terraform_state.id
#   versioning_configuration {
#     status = "Enabled"
#   }
# }
# resource "aws_dynamodb_table" "terraform_locks" {
#   name         = "terraform-locks"
#   billing_mode = "PAY_PER_REQUEST"
#   hash_key     = "LockID"

#   attribute {
#     name = "LockID"
#     type = "S"
#   }

#   tags = {
#     Name        = "terraform-locks"
#     Environment = "dev"
#   }
# }
