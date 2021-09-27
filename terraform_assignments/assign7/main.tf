provider "aws" {
  region = "${var.aws_region}"
  access_key = "AKIAZEAX6RNQNMRMVZUS"
  secret_key = "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"
}

resource "random_id" "tf_bucket_id" {
  byte_length = 2
}

resource "aws_s3_bucket" "tf_code" {
    #bucket        = "${var.project_name}-${random_id.tf_bucket_id.dec}"
    count         = length(var.number_of_instances) //count will be 3
    bucket        = var.number_of_instances[count.index]
    acl           = "private"

    force_destroy =  true

    tags = {
      Name = "tf_bucket"
    }
}


