# Outputs

output "vpc_id" {
    description = "The ID of the VPC"
    value       = aws_vpc.main.id
}

output "vpc_cidr_block" {
    description = "The CIDR block of the VPC"
    value       = aws_vpc.main.cidr_block
}

output "public_subnet_ids" {
    description = "The IDs of the public subnets"
    value       = aws_subnet.public.*.id
}

output "private_subnet_ids" {
    description = "The IDs of the private subnets"
    value       = aws_subnet.private.*.id
}

output "vpc_default_security_group_id" {
    description = "The ID of the default security group for the VPC"
    value       = aws_security_group.default.id
}
