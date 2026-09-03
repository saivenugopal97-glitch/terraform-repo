provider "aws" {
region = "us-north-1"
}

resource "aws_s3_bucket" "demo" {
bucket = "my-githubactions-bucket-oo99"
}


resource "aws_instance" "my_server" {
  ami           = "ami-0b79f6b294a030f24" 
  instance_type = "t3.micro"             

  tags = {
    Name = "Terraform-Managed-EC2"
  }
}
