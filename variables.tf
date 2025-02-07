provider "aws" {
    region = "us-east-1"
}

variable "vpcname" {
  type = string
  default = "myvpc"
}

variable "sshport" {
  type = number 
  default = 22 
}

variable "enabled" {
  default = true
}

variable "mylist" {
  type = list (string)
  default = ["Val1","Val2"]
}

variable "mymap" {
  type = map 
  default = {
    Key1 = "Val1"
    Key2 = "Val2"
  }
}

variable "inputname" {
    type = string 
    description = "Set the name of the VPC"
  
}
resource "aws_vpc" "myvpc" {
    cidr_block = "10.0.0.0/16"
    tags = {
        Name = var.inputname

    }
}

output "vpcid"{
    value = aws_vpc.myvpc.id
}