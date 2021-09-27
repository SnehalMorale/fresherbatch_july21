variable "aws_region" {
  default = "us-east-1"
}

variable "project_name" {
  default = "la-terraform"
}

variable "number_of_instances" {
  type = list
  default = ["terradev.app", 
             "terraops.app", 
             "terraprod.app" 
            ]
}