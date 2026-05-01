resource "aws_s3_bucket" "statefile" {
  bucket = "yamunagk1991-tf-statefile-bucket"

  tags = {
    Name = "My bucket"
  }
}
resource "aws_s3_bucket_versioning" "statefile" {
  bucket = aws_s3_bucket.statefile.id

  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_dynamodb_table" "terraform_locks" {
  name         = "terraform-state-locks"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }

  tags = {
    Name = "Terraform Lock Table"
  }
}