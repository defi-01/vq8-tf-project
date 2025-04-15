variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "eu-central-1"
}

variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
  default = "10.0.0.0/16"
}

variable "public_subnet" {
  description = "CIDR block for the public subnet"
  type        = string
  default = "10.0.1.0/24"
}

variable "availability_zone" {
  description = "Availability Zone to deploy the subnet"
  type        = string
  default = "eu-central-1a"
}

variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  type    = string
  default = "ami-03250b0e01c28d196"
}

variable "instance_type" {
  description = "EC2 instance type"
  type    = string
  default = "t2.micro"
}
