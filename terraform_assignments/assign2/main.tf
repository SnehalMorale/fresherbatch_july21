terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 2.13.0"
    }
  }
}

provider "docker" {
host = "npipe:////.//pipe//docker_engine"
}

resource "docker_image" "image_id" {
 name = "${var.image_name}"

}

# Start the Container
resource "docker_container" "container_id" {
  name  = "${var.container_name}"
  image = "${docker_image.image_id.latest}"
  ports {
    internal = "2368"
    external = "${var.ext_port}"
  }
}
