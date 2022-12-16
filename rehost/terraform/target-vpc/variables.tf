# Terraform input variables
variable "region" {
    description = "The provider region to create resources"
    type     = string
}
variable "vpc_name" {
    description = "The name of the VPC"
    type        = string
}

variable "public_subnet_name" {
    description = "The name of the Public Subnet"
    type        = string
}

variable "private_subnet_name" {
    description = "The name of the Private Subnet"
    type        = string
}

variable "postgre_sql_subnet_name" {
    description = "The name of the PostgreSQL Private Subnet"
    type        = string
}

variable "staging_subnet_name" {
    description = "The name of the Stagign Area Private Subnet"
    type        = string
}
# cidr variables
variable "vpc_cidr" {
    description = "The CIDR block of the VPC"
    type        = string
}

variable "public_cidr" {
    description = "The CIDR block of the Public Subnet"
    type        = string
}

variable "private_cidr" {
    description = "The CIDR block of the Private Subnet"
    type        = string
}

variable "postgre_sql_cidr" {
    description = "The CIDR block of the PostgreSQL Private Subnet"
    type        = string
}
variable "staging_cidr" {
    description = "The CIDR block of the Staging Area Private Subnet"
    type        = string
}