variable "corporate_data_center_vpc_name" {
  description = "The name of the VPC"
  type        = string
}

variable "corporate_data_center_public_subnet_name" {
  description = "The name of the public subnet"
  type        = string
}

variable "corporate_data_center_private_subnet_name" {
  description = "The name of the public subnet"
  type        = string
}

variable "corporate_data_center_vpc_cidr" {
  description = "The CIDR block of the VPC"
  type        = string
}

variable "corporate_data_center_public_cidr" {
  description = "The CIDR block of the public subnet"
  type        = string
}

variable "corporate_data_center_private_cidr" {
  description = "The CIDR block of the public subnet"
  type        = string
}

variable "corporate_data_center_public_rt_name" {
  description = "The name of the public route table"
  type        = string
}

variable "corporate_data_center_private_rt_name" {
  description = "The name of the private route table"
  type        = string
}

variable "corporate_data_center_igw_name" {
  description = "The name of the internet gateway"
  type        = string
}

variable "corporate_data_center_nat_gateway_name" {
  description = "The name of the NAT gateway"
  type        = string
}

variable "corporate_data_center_webserver_sgname" {
  description = "The name of the webserver SG"
  type        = string
}

variable "corporate_data_center_database_sgname" {
  description = "The name of the database SG"
  type        = string
}
