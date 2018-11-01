resource "aws_vpc" "main" {
  cidr_block       = "${var.vpc-cidr}"
  instance_tenancy = "default"

  tags {
    Name = "DEMO-VPC"
  }
}

resource "aws_subnet" "subnet" {
  vpc_id     = "${aws_vpc.main.id}"
  cidr_block = "${var.subnet-cidr}"

  tags {
    Name = "Subnet1"
  }
}

