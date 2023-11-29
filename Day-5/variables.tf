variable "aws_region" {
    description = "Aws Region"
    default = "us-east-1"
}

variable "aws_key_pub_path" {
    description = "aws_key_pair path"
}

variable "cidr" {
  default = "10.0.0.0/16"
}

variable "ec2_availability_zone"{
    default = "us-east-1a"
}