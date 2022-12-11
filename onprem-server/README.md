# Migration Server

## On-Premises Virtual Server
Simulate On Premise DataCenter with a dedicated VPC in AWS
# VPC
corporate_data_center_vpc_name              = "Virtual-On-Prem-VPC" [eu-west-1]
# SUBNETS
corporate_data_center_public_subnet_name    = "OnPrem-Public-SB"
corporate_data_center_private_subnet_name   = "OnPrem-Private-SB"
# CIDR
corporate_data_center_vpc_cidr              = "10.0.0.0/16"
corporate_data_center_public_cidr           = "10.0.1.0/24"
corporate_data_center_private_cidr          = "10.0.10.0/24"
# RT
corporate_data_center_public_rt_name        = "OnPrem-Public-RT"
corporate_data_center_private_rt_name       = "OnPrem-Private-RT"
# IGW
corporate_data_center_igw_name              = "OnPrem-IGW"
corporate_data_center_nat_gateway_name      = "OnPrem-NAT"
# SECURITY GROUPS
corporate_data_center_webserver_sgname      = "OnPrem-Webserver-SG"
corporate_data_center_database_sgname       = "OnPrem-Database-SG"


# EC2 INSTANCES ON PREMISE 
- 2 EC2 instances (1 in the public one for webserver and 1 in the private one for the database)
    - WEBSERVER = t2.medium
    - DATABASE  = m5.large
- Postgres is configured on DB server
- PGAdmin is working on webserver and connected with the DB
# AWS MGN
- Replication agent installed on both EC2s
- Completed Initialise AWS MGN service in [eu-east-1]