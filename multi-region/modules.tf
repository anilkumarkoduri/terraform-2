module "launcher-east-1" {
  source = "./launcher"
  region = "us-east-1"
  ami = "ami-07ec4c16055b829e2"
  subnet_id = "subnet-0f85c70b2774a78d2"
}

module "launcher-west-2" {
  source = "./launcher"
  region = "us-west-2"
  ami = "ami-0ba74a6d55f83fc75"
  subnet_id = "subnet-0f2a4be67427b5003"
}
