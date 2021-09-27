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
  access_key = "AKIAZEAX6RNQNMRMVZUS"
  secret_key = "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"
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