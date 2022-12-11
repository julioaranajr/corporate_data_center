# Migration Server

## On-Premises Virtual Server
Simulate On Premise DataCenter with a dedicated VPC in AWS

| VPC | Description |
| --- | --- |
| corporate_data_center_vpc_name | "Virtual-On-Prem-VPC" [eu-west-1] |

| SUBNETS | Description |
| --- | --- |
| corporate_data_center_public_subnet_name | "OnPrem-Public-SB" |
| corporate_data_center_private_subnet_name | "OnPrem-Private-SB" |

| CIDR | Description |
| --- | --- |
| corporate_data_center_vpc_cidr | "10.0.0.0/16" |
| corporate_data_center_public_cidr | "10.0.1.0/24" |
| corporate_data_center_private_cidr | "10.0.10.0/24" |

| RT | Description |
| --- | --- |
| corporate_data_center_public_rt_name | "OnPrem-Public-RT" |
| corporate_data_center_private_rt_name | "OnPrem-Private-RT" |

| IGW | Description |
| --- | --- |
| corporate_data_center_igw_name | "OnPrem-IGW" |
| corporate_data_center_nat_gateway_name | "OnPrem-NAT" |

| SECURITY GROUPS | Description |
| --- | --- |
| corporate_data_center_webserver_sgname | "OnPrem-Webserver-SG" |
| corporate_data_center_database_sgname | "OnPrem-Database-SG" |

| EC2 INSTANCES ON PREMISE| Description | Type |
| --- | --- | --- |
| WEBSERVER | in the public one for webserver | t2.medium |  
| DATABASE | in the private one for the database |m5.large |

- [x] Postgres is configured on DB server
- [x] PGAdmin is working on webserver and connected with the DB
# AWS MGN
- [x] Replication agent installed on both EC2s
- [x] Completed Initialise AWS MGN service in [eu-east-1]