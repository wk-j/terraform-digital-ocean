variable "do_token" {}

provider "digitalocean" {
  token = "${var.do_token}"
}

resource "digitalocean_droplet" "terraform" {
  image  = "docker-18-04"
  name   = "Terraform-101"
  region = "sgp1"
  size   = "s-1vcpu-2gb"
  tags   = ["Test", "Terraform"]
}

output "droplet_output" {
  value = digitalocean_droplet.terraform.ipv4_address
}
