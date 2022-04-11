provider "aws" {
  profile           = "default"
  region            = "ap-southeast-2"
}

resource "aws_s3_bucket" "tf_course_2"{
  bucket            = "tf-course-11042022"
}

resource "aws_default_vpc" "default" {}

resource "aws_security_group" "prod-web" {
  name              = "prod_web"
  description       = "Allow standard http and https ports inbound and everything outbound"

  ingress {
	from_port   = 80
	to_port     = 80
	protocol    = "tcp"
	cidr_blocks = ["0.0.0.0/0"]
	
  }
  ingress {
        from_port   = 443
        to_port     = 443
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]

  }
  egress {
	from_port = 0
	to_port   = 0
	protocol  = "-1"
	cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    "Terraform"  :  "true"
  }

}


