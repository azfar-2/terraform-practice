terraform {
    required_providers {
        docker = {
            source = "kreuzwerker/docker"
            version = "3.0.2"
        }
    }
}

provider docker {

}

resource "docker_image" "azfr-imagafe" {
    name = "nginx:latest"
}

resource "docker_container" "azfr-cont" {
    name = "shahima1stlove"
    image = docker_image.azfr-imagafe.name 


    ports {
        external = 80
        internal = 80
    }
}
