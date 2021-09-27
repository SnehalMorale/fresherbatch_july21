
#Output the IP Address of the Container
output "ghost_container_ip_address" {
  value       = "${docker_container.ghost_container.ip_address}"
  description = "The IP for the ghost container."
}

output "ghost_container_name" {
  value       = "${docker_container.ghost_container.name}"
  description = "The name of the ghost container."
}