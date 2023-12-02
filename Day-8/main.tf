provider "aws" {
  region = "ap-south-1"
}

module "ec2_instance" {
  source              = "../Day-3/modules/ec2_instance"
  ami_value           = "ami-0287a05f0ef0e9d9a" # replace this
  instance_type_value = "t2.micro"
  subnet_id_value     = "subnet-364a197a" # replace this
  aws_region          = "ap-south-1"
  ec2_name            = "test_ec2_instance_for_drift"
}

output "public-ip-address" {
  value = module.ec2_instance.public-ip-address
}

output "security_groups" {
  value = module.ec2_instance.security_groups

}
