resource "aws_internet_gateway" "corporate_data_center_IGW" {
  vpc_id = aws_vpc.corporate_data_center_vpc.id

  tags = {
    Name = var.corporate_data_center_igw_name
  }
}

resource "aws_eip" "corporate_data_center_allocation_eip" {
  vpc = true
}

resource "aws_nat_gateway" "corporate_data_center_NAT" {

  allocation_id     = aws_eip.corporate_data_center_allocation_eip.id
  subnet_id         = aws_subnet.corporate_data_center_public_SB.id
  connectivity_type = "public"

  tags = {
    Name = var.corporate_data_center_nat_gateway_name
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [aws_internet_gateway.corporate_data_center_IGW]
}