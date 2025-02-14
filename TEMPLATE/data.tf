# All data resources

data "aws_ami" "example" {
    most_recent = true

    filter {
        name   = "name"
        values = ["amzn-ami-hvm-*-x86_64-ebs"]
    }

    owners = ["amazon"]
}
