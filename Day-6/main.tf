provider "aws" {
  region = var.aws_region
}

module "ec2_instance" {
  source        = "./modules/ec2_instance"
  ami           = var.ami
  instance_type = lookup(var.instance_type, terraform.workspace, "t2.micro")
  aws_region    = "ap-south-1"
}

output "public_ip_ec2_instance" {
  value = module.ec2_instance.public_ip

}
