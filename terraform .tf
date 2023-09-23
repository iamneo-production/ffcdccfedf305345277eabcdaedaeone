terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
        }
    }
}
provider "aws"{
    region = "ap-south-1"
    access_key = "AKIAQ6LJ7J6O4YC2CJBZ"
    secret_key = "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"
}
resource "aws_instance" "e2c_instance" {
    ami = ""
    instance_type = "t2.micro"
}
output "public_ip" {
    value = aws_instance.e2c_instance.public_ip
}