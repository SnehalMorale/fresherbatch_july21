
#Define variables
variable "image_name" {
  description = "Image for container."
 # image_name   = "ghost:alpine"
  default = "ghost:latest"
}

variable "container_name" {
  description = "Name of the container."
   # container_name  = "ghost_blog1"
  default   = "ghost_blog1"
}

variable "ext_port" {
  description = "External port for container."
   # ext_port   = "80"
   default   = "80"
}