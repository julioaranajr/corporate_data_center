resource "aws_s3_bucket" "corporate_data_center_backend_bucket" {
    bucket = "datacenter-terraform-tfstates-539711789680"

    lifecycle {
        prevent_destroy = true
    }

    tags = {
        Name        = "datacenter-terraform-tfstates-539711789680"
        Environment = "Dev"
        Team        = "Talent-Academy"
    }
}

resource "aws_s3_bucket_versioning" "version_my_bucket" {
  bucket = aws_s3_bucket.corporate_data_center_backend_bucket.id

  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_dynamodb_table" "terraform_lock_tbl" {
  name           = "terraform-lock"
  read_capacity  = 1
  write_capacity = 1
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }

  tags = {
    Name = "terraform-lock"
  }
}
