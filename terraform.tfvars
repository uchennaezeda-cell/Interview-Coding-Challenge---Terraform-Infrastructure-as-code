region = "us-east-1"

vpc_cidr_block = "10.0.0.0/16"

tags = {
  Project = "TF-VPC"
}

project     = "TFVPC"
environment = "prod"

public_subnet_cidrs = [
  "10.0.1.0/24",
  "10.0.2.0/24",
  "10.0.3.0/24"
]

private_subnet_cidrs = [
  "10.0.11.0/24",
  "10.0.12.0/24",
  "10.0.13.0/24"
]

public_tags = {
  Tier = "PUBLIC"
}

private_tags = {
  Tier = "PRIVATE"
}

igw_tags = {
  Name = "TF-IGW"
}

nat_eip_tags = {
  Name = "TF-NAT-EIP"
}

nat_gw_tags = {
  Name = "TF-NAT"
}

public_route_table_tags = {
  Name = "TF-Public-RT"
}

private_route_table_tags = {
  Name = "TF-Private-RT"
}

sg_tags = {
  Name = "TF-SG"
}

ec2_ami = "ami-02d26659fd82cf299"

ec2_instance_type = "t2.micro"

ec2_tags = {
  Name = "TF-EC2"
}
