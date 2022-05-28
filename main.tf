terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.15.1"
    }
  }
}


provider "aws" { 
  region  = var.region
}

resource "aws_instance" "jfneto_server" {
  ami           = var.ami
  instance_type = var.instance_type

  tags = {
    Name = "example_jfneto_server"
  }
}


#resource "aws_security_group_rule" "jfneto_security_rules" {
#  type              = "ingress"
#  from_port         = 22
#  to_port           = 22
#  protocol          = "tcp"
#  security_group_id = "sg-0114cf27d3d16fc84"
#}