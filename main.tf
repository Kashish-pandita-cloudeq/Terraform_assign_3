resource "aws_instance" "web" {
  count         = length(var.instance_name)  
  ami           = "ami-0cff7528ff583bf9a"
  instance_type = "t2.micro"
  tags = {
    Name  = var.instance_name[count.index],     
    Owner = "Kashish"
  }
}


provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAUUMP4EM2LN7BSBPX"
  secret_key = "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"

}


resource "aws_instance" "My_new_instance" {
  for_each      = var.loop_name
  ami           = "ami-0cff7528ff583bf9a"
  instance_type = "t2.micro"

   tags   = {
    Name  = each.value,     
    Owner = each.key
  }
}

resource "aws_instance" "My_another_instance" {
  for_each      = var.new_loop
  ami           = each.value.ami
  instance_type = each.value.instance_type

   tags   = {
    Name  = each.value.name,     
    Owner = each.key
  }
}


resource "aws_s3_bucket" "New_bucket" {
  for_each  =  var.bucket-loop
  bucket    = "my-test-bucket"

  tags = {
    Name        = each.value
    Environment = each.key
  }
}

resource "aws_vpc" "main" {
  count            = length(var.vpc_name)
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name  = var.vpc_name[count.index]
    Owner = "Kashish"
  }
}

resource "aws_vpc" "Another" {
  for_each         = toset(var.new_vpc_name)
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name  = each.value
    Owner = "Kashish"
  }
}