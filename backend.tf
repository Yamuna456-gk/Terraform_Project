terraform {
  backend "s3" {
    bucket         = "yamunagk1991-tf-statefile-bucket"
    key            = "env/dev/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-state-locks"
    encrypt        = true
  }
}
