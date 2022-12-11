resource "aws_route_table" "corporate_data_center_public_RT" {
  vpc_id = aws_vpc.corporate_data_center_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.corporate_data_center_IGW.id

  }

  tags = {
    Name = var.corporate_data_center_public_rt_name
  }
}

resource "aws_route_table" "corporate_data_center_private_RT" {
  vpc_id = aws_vpc.corporate_data_center_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.corporate_data_center_NAT.id

  }

  tags = {
    Name = var.corporate_data_center_private_rt_name
  }
}

resource "aws_route_table_association" "corporate_data_center_public_rt_assoc" {
  subnet_id      = aws_subnet.corporate_data_center_public_SB.id
  route_table_id = aws_route_table.corporate_data_center_public_RT.id
}

resource "aws_route_table_association" "corporate_data_center_private_rt_assoc" {
  subnet_id      = aws_subnet.corporate_data_center_private_SB.id
  route_table_id = aws_route_table.corporate_data_center_private_RT.id
}
