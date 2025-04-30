resource "aws_vpc" "myvpc" {
  cidr_block = "10.10.0.0/16"
  tags = {
    Name = "myvpc"
  }
}
provider "aws" {
   region = "us-east-1"
}

resource "aws_subnet" "mypublicsubnet"{
   vpc_id = "aws_vpc.myvpc.id"
   cidr_block = "10.10.0.0/24"

   tags = {
     Name = "mypublicsubnet"
     }
}

resource "aws_subnet" "myprivatesubnet" {
   vpc_id = "aws_vpc.myvpc.id"
   cidr_block = "10.10.1.0/24"
   tags = {
   Name = "myprivatesubnet"
   }
}


