terraform {
  backend "s3" {
    bucket = "terraform-backend-newbatchfeb2025"
    key    = "terraform/remote/s3/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "dynamodb-state-locking"          # DynamoDB table name for locking
    encrypt        = true                            # Encrypt the state file
  }
}

