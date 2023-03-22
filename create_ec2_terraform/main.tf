terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-west-2"
  profile = "default"  
}

###############
# LOAD BALANCER
###############
resource "aws_instance" "app_server" {  
  ami           = "ami-095413544ce52437d"
  instance_type = "t2.micro"
  #key_name = "vm_lb"

  tags = {
    Name = "LoadBalancer"   #NAME INSTANCE
  }
}


###############
# VM FRONTEND2
###############
resource "aws_instance" "app_server1" {  
  ami           = "ami-095413544ce52437d"
  instance_type = "t2.micro"
  #key_name = "vm_front2"

  tags = {
    Name = "FrontEnd2"   #NAME INSTANCE
  }
}

###############
# VM PROXY
###############
resource "aws_instance" "app_server2" {  
  ami           = "ami-095413544ce52437d"
  instance_type = "t2.micro"
  #key_name = "vm_proxy"

  tags = {
    Name = "Proxy"   #NAME INSTANCE
  }
}

###############
# VM DATABASE
###############
resource "aws_instance" "app_server3" {  
  ami           = "ami-095413544ce52437d"
  instance_type = "t2.micro"
  #key_name = "vm_db"

  tags = {
    Name = "Database"   #NAME INSTANCE
  }
}

