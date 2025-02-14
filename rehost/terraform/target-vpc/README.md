# Target VPC

- [ ] 1 AWS Region (eu-central-1)
- [ ] 1 AWS VPC (10.0.16.0/20)
- [ ] 1 AWS Public Subnet (10.0.16.0/24)
- [ ] 1 AWS Application Private Subnet (10.0.24.0/25)
- [ ] 1 AWS Database Private Subnet (10.0.24.128/25)
- [ ] 1 AWS Staging Area Private Subnet (10.0.25.0/25)
- [ ] 2 Security Groups (Inbound 80, 443 and 22 for Webserver and 5432, 22 for Database server)
- [ ] The Database SG accepts connections only from the Webserver SG
- [ ] Internet Gateway
- [ ] Nat Gateway
- [ ] Created an IAM role for connecting to the EC2s using SSM (useful for testing directly on the shell)
- [ ] AWS MGN
    [ ] Service is initialised and no errors show up on the console.
    [ ] Create a replication template.
    [ ] Create a replication server.
    [ ] Create a source server.
    [ ] Create a target server.
    [ ] Create a replication configuration.
    [ ] Start replication.
    [ ] Check the replication status.
    [ ] Check the replication logs.
    [ ] Check the replication jobs.
    [ ] Check the replication servers.
