resource "aws_security_group" "corporate_data_center_webserver_sgname" {
  name              = var.corporate_data_center_webserver_sgname
  description       = "Security group for Webserver"
  vpc_id            = aws_vpc.corporate_data_center_vpc.id

  ingress {
    description     = "SSH connection into the server"
    from_port       = 22
    to_port         = 22
    protocol        = "tcp"
    cidr_blocks     = ["0.0.0.0/0"]
  }

  ingress {
    description     = "HTTP connection into the server"
    from_port       = 80
    to_port         = 80
    protocol        = "tcp"
    cidr_blocks     = ["0.0.0.0/0"]
  }

  ingress {
    description     = "HTTPS connection into the server"
    from_port       = 443
    to_port         = 443
    protocol        = "tcp"
    cidr_blocks     = ["0.0.0.0/0"]
  }

ingress {
    description     = "MGN"
    from_port       = 1500
    to_port         = 1500
    protocol        = "tcp"
    cidr_blocks     = ["0.0.0.0/0"]
  }

  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
  }

  tags = {
    Name = var.corporate_data_center_webserver_sgname
  }
}

resource "aws_security_group" "corporate_data_center_database_sgname" {
  name        = var.corporate_data_center_database_sgname
  description = "Security group for database"
  vpc_id      = aws_vpc.corporate_data_center_vpc.id

  ingress {
    description     = "SSH connection into the server"
    from_port       = 22
    to_port         = 22
    protocol        = "tcp"
    security_groups = [aws_security_group.corporate_data_center_webserver_sgname.id]
  }

ingress {
    description     = "MGN"
    from_port       = 1500
    to_port         = 1500
    protocol        = "tcp"
    cidr_blocks     = ["0.0.0.0/0"]
  }
  
  ingress {
    description     = "Database connection into the server"
    from_port       = 5432
    to_port         = 5432
    protocol        = "tcp"
    security_groups = [aws_security_group.corporate_data_center_webserver_sgname.id]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = var.corporate_data_center_database_sgname
  }
}