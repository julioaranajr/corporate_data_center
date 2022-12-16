# Terraform local variables
locals {
  project_name            = "CAPCI-Group4"
  environment             = "Development"
  challenge               = "Migration-Rehost"
  region                  = "eu-central-1"

  tags = {
    ProjectName = local.project_name
    Environment = local.environment
    Challenge   = local.challenge
  }
}