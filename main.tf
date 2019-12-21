variable "do_token" {}

provider "digitalocean" {
  token = "${var.do_token}"
}

resource "digitalocean_droplet" "web" {
  image  = "docker-18-04"
  name   = "Web101"
  region = "sgp1"
  size   = "s-1vcpu-2gb"
}
