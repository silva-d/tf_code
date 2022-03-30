provider "aws" {
  profile = "default"
  region  = "ap-southeast-2"
}

resource "aws_s3_bucket" "tf_course_2"{
  bucket = "tf-course-30032022"
