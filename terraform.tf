terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-2"
}

# Deploying 1st EC2 Instance
resource "aws_instance" "Terraform-Instance1"{
	ami = "ami-0629230e074c580f2"
        instance_type = "t2.micro"
 	key_name= "devops-ec2"
	tags = {
	Name = "my-instance1"
	}
}

