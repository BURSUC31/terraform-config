provider "aws" {
  region = "eu-west-3"
}


variable "vpc_cidr_block" {

}
variable "subnet_cidr_block" {

}
variable "avail_zone" {
}
variable "env_prefix" {
}


resource "aws_vpc" "myapp-vpc" {
  cidr_block = var.vpc_cidr_block
  tags = {
    Name : "${var.env_prefix}-vpc"
  }
}

resource "aws_subnet" "dev-subnet-1" {
  vpc_id            = aws_vpc.myapp-vpc.id
  availability_zone = var.avail_zone
  cidr_block        = var.subnet_cidr_block
  tags = {
    Name : "${var.env_prefix}-vpc"
  }
}


