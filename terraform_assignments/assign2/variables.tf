
#Define variables
variable "image_name" {
  description = "Image for container."
  default     = "ghost:alpine"
}

variable "container_name" {
  description = "Name of the container."
  default     = "ghost_blog1"
}

variable "ext_port" {
  description = "External port for container."
  default     = "8080"
}