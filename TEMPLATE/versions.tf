# Terraform configuration block (including required_version, backend, & required_providers)
# Terraform providers (e.g., aws, tls, etc.)

terraform {
    required_version = ">= 0.12"

    backend "s3" {
        bucket = "my-terraform-state"
        key    = "path/to/my/key"
        region = "eu-central-1"
    }

    required_providers {
        aws = {
            source  = "hashicorp/aws"
            version = ">= 2.0"
        }
    }
}