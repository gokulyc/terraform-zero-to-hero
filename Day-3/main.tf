provider "aws" {
  region = "ap-south-1"
}

module "ec2_instance" {
  source = "./modules/ec2_instance"
  ami_value = "ami-0287a05f0ef0e9d9a" # replace this
  instance_type_value = "t2.micro"
  subnet_id_value = "subnet-364a197a" # replace this
  aws_region = "ap-south-1"
  ec2_name = "test_ec2_instance"
}

output "public-ip-address" {
  # value = ec2_instance.aws_instance.example.public_ip
  value = module.ec2_instance.public-ip-address
}
output "subnet_id" {
  value = module.ec2_instance.subnet_id
}

output "security_groups" {
  value = module.ec2_instance.security_groups

}