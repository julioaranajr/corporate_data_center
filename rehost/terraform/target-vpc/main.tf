# Main resources: e.g., VPCs, Subnets, EC2 instances, etc.

module "vpc" {
    source = "terraform-aws-modules/vpc/aws"
    version = "3.18.1"
    
    cidr = var.vpc_cidr

    azs                 = [data.aws_availability_zones.available.names[0]]
    public_subnets      = [var.public_cidr]
    private_subnets     = [var.private_cidr, var.postgre_sql_cidr, var.staging_cidr] 

    enable_nat_gateway  = true
    single_nat_gateway  = true

    tags = {
      "Name" = var.vpc_name
    }

}