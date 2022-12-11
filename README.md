# Migration Server

## On-Premises Virtual Server
Simulate On Premise DataCenter with a dedicated VPC in AWS

| VPC | Description | Type |
| :--- | :---: | :---: |
| corporate_data_center_vpc_name | Virtual-On-Prem-VPC | [dedicated] |
| SUBNETS | Description | Type |
| corporate_data_center_public_subnet_name | OnPrem-Public-SB | Public |
| corporate_data_center_private_subnet_name | OnPrem-Private-SB | Private |
| CIDR |  |  |
| corporate_data_center_vpc_cidr | [10.0.0.0/16] | VPC |
| corporate_data_center_public_cidr | [10.0.1.0/24] | Public |
| corporate_data_center_private_cidr | [10.0.10.0/24] | Private |
| RT |  |  |
| corporate_data_center_public_rt_name | OnPrem-Public-RT | Public |
| corporate_data_center_private_rt_name | OnPrem-Private-RT | Private |
| IGW |  |  |
| corporate_data_center_igw_name | "OnPrem-IGW" | IGW |
| corporate_data_center_nat_gateway_name | "OnPrem-NAT" | NAT |
| SECURITY GROUPS |  |  |
| corporate_data_center_webserver_sgname | OnPrem-Webserver-SG | Public |
| corporate_data_center_database_sgname | OnPrem-Database-SG | Private |
| EC2 INSTANCES ON PREMISE|  |  |
| - WEBSERVER | in the Public one for webserver | t2.medium |  
| - DATABASE | in the Private one for the database |m5.large |

- [x] Postgres is configured on DB server
- [x] PGAdmin is working on webserver and connected with the DB
# AWS MGN
- [x] Replication agent installed on both EC2s
- [x] Completed Initialise AWS MGN service in [eu-east-1]