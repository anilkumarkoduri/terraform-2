provider "aws" {
  region = "${var.region}"
  alias = "myregion"
}

resource "aws_instance" "instance" {
  ami = "${var.ami}"
  instance_type = "t2.micro"
  provider = "aws.myregion"
  subnet_id = "${var.subnet_id}"
  tags {
    Name = "HelloWorld"
  } 
}
