resource "aws_vpc" "main" {
  cidr_block       = "10.50.0.0/16"
  instance_tenancy = "default"

  tags {
    Name = "DEMO-VPC"
  }
}

resource "aws_subnet" "subnet" {
  vpc_id     = "${aws_vpc.main.id}"
  cidr_block = "10.50.1.0/24"

  tags {
    Name = "Subnet1"
  }
}

