
#Define variables


variable "container_name" {
  description = "Name of the container."
   # container_name  = "mysql"
  default   = "mysql"
}

variable "mysql_root_password" {
  description = "root password"
  default = "P4sSw0rd0!"
}

variable "mysql_network_name" {
  description = "Name of the network"
  default = "mysql_internal_network"
}

variable "mysql_volume_name" {
  description = "Name of the volume"
   default   = "mysql_data"
}