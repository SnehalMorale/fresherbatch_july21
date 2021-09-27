terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region     = "${var.aws_region}"
  access_key = "my-access-key"
  secret_key = "My-secret-key"
}

resource "random_id" "tf_bucket_id" {
  byte_length = 2
}

resource "aws_s3_bucket" "tf_code" {
  bucket = "${var.project_name}-${random_id.tf_bucket_id.dec}"
  acl    = "private"

  tags = {
    Name        = "tf_bucket"
    
  }
}
