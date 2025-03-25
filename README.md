# AWS Migration Lab
![corporate_data_center](https://socialify.git.ci/julioaranajr/corporate_data_center/image?description=1&language=1&name=1&owner=1&pattern=Solid&theme=Dark)

## Directory Structure

The following directory structure should be maintained for this repository:

```bash
├── .gitignore
├── README.md
├── TEMPLATE                          Template for terraform root modules
├── rehost
    ├── terraform                 Terraform root modules
    |   ├── source-vpc            Deploy VPC for simulating on-prem data center
    |   ├── target-vpc            Deploy VPC for hosting  workload migrated to AWS
    |   ├── patch-management      Configure patch management
    |   └── automated-backups     Configure automatic backups
    |
    └── python                    Python scripts
        └── src
            ├── libs              Reusable artifacts
            └── utils             Utility components
```

## Terraform

### Scripts

The structure and instructions provided in [TEMPLATE](./TEMPLATE/README.md) should be followed as best as possible when creating root terraform module directories.

### Backend Convention

The root terraform modules should use an S3 backend, with a DynamoDB lock file.

```md
backend "s3" {
  region         = "eu-central-1"
  bucket         = "tf-state-aws-migration-test"
  key            = "<root_module>.tfstate"
  dynamodb_table = "tf-state-lock-<team-name>>-<root_module>"
  encrypt        = "true"
}
```

Replace <root_module> with the corresponding root module name.
E.g., `key = "aws-migration-lab-rehost-source-vpc.tfstate"` for the source VPC root module.
