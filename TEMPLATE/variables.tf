# Terraform input variables

variable "region" {
    description = "The region where the resources will be created"
    type        = string
    default     = "eu-central-1"
}

variable "instance_type" {
    description = "The type of instance to create"
    type        = string
    default     = "t2.micro"
}

variable "vpc_id" {
    description = "The ID of the VPC"
    type        = string
}

variable "subnet_ids" {
    description = "A list of subnet IDs"
    type        = list(string)
}