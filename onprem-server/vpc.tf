resource "aws_vpc" "corporate_data_center_vpc" {
  cidr_block = var.corporate_data_center_vpc_cidr
  instance_tenancy = "dedicated"

  tags = {
    Name = var.corporate_data_center_vpc_name
  }
}

resource "aws_subnet" "corporate_data_center_public_SB" {
  vpc_id                  = aws_vpc.corporate_data_center_vpc.id
  cidr_block              = var.corporate_data_center_public_cidr
  availability_zone       = data.aws_availability_zones.available.names[0]
  map_public_ip_on_launch = true
  
  tags = {
    Name = var.corporate_data_center_public_subnet_name
  }
}

resource "aws_subnet" "corporate_data_center_private_SB" {
  vpc_id            = aws_vpc.corporate_data_center_vpc.id
  cidr_block        = var.corporate_data_center_private_cidr
  availability_zone = data.aws_availability_zones.available.names[0]

  tags = {
    Name = var.corporate_data_center_private_subnet_name
  }
}