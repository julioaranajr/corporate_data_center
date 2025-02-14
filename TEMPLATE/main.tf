# Main resources: e.g., VPCs, Subnets, EC2 instances, etc.

resource "aws_vpc" "main" {
    cidr_block = "10.0.0.0/16"

    tags = {
        Name = "main_vpc"
    }
}

resource "aws_subnet" "main" {
    vpc_id            = aws_vpc.main.id
    cidr_block        = "10.0.1.0/24"
    availability_zone = "eu-central-1a"

    tags = {
        Name = "main_subnet"
    }
}

resource "aws_instance" "main" {
    ami           = "ami-0c55b159cbfafe1f0"
    instance_type = "t2.micro"
    subnet_id     = aws_subnet.main.id

    tags = {
        Name = "main_instance"
    }
}