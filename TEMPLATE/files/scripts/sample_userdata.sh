# User data for EC2 instance

# Update the system
sudo yum update -y

# Install basic packages
sudo yum install -y git wget curl

# Install Docker
sudo amazon-linux-extras install docker
sudo service docker start
sudo usermod -a -G docker ec2-user

# Install Docker Compose
sudo curl -L "
