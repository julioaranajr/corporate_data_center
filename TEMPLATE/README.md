# Terraform Template

This directory contains the template to be used for all terraform workloads.
The structure should remain the same as outlined in the template.

* `files` - Directory to be used when any files/policies/licences etc. will be required by the configuration.
* `data.tf` - Calls _all_ [data](https://www.terraform.io/language/data-sources) sources.
* `locals.tf` - [local](https://www.terraform.io/language/values/locals) values. Unlike input variables these should not be set directly by users of the configuration.
* `vpc.tf` - contains VPC-related resources.
* `ec2.tf` - contains EC2-related resources.
* `sg.tf` - contains security group resources.
* `outputs.tf` - contains outputs from the resources created.
* `versions.tf` - contains providers and version requirements for Terraform.
* `terraform.tfvars` - contains input variables to be directly set by the user.
* `variables.tf` - contains declarations of variables used in `main.tf`.

There may be a case for a developer bending the rules in certain scenarios. For example, if there is a large configuration of resource specific modules, it may be cleaner and more readable for the project if these are broken out into their own `_service/resource_.tf` file. eg:

* `sg.tf` - to contain a large number of security groups
* `iam.tf` - to contain a large amount of role

This decision will be left to developer discretion and reviewed upon pull request.

## Template files, policies etc

If a configuration requires any files, policies or anything that can be abstracted out of a module then please use the `templatefile("${path.module}/files/<path_to_file>, vars)` function.
If there are multiple types of files required (e.g EC2 userdata scripts and iam policies) these should be given their own directory within the `files directory`:

```md

- files
  - scripts
  - iam_policies

```

## Naming Conventions

### General conventions

1. Use _ (underscore) instead of - (dash) everywhere (resource names, data source names, variable names, outputs, etc).
2. Prefer to use lowercase letters and numbers (even though UTF-8 is supported).

> ⚠️ Beware that actual cloud resources often have restrictions in allowed names. Some resources, for example, can't contain dashes, some must be camel-cased. The conventions in this readme refer to Terraform names themselves (and not physical resource names - these should follow the naming convention set out in the design).

### Resource and data source arguments

1. Do not repeat resource type in resource name (not partially, nor completely):

> ✅ &nbsp;`resource "aws_route_table" "public" {}`
> ❌ &nbsp;`resource "aws_route_table" "public_route_table" {}`

## Usage

Copy the `TEMPLATE` directory and rename it to the workload that you are deploying. Create and update according to the infrastructure required. Ensure you are authenticated into the correct AWS account.

Ensure to update `versions.tf` with your required configuration for the backend.

```bash

terraform init
terraform plan
terraform apply

```
