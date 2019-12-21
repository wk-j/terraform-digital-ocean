resource "digitalocean_ssh_key" "default" {
  name       = "Terraform Example"
  public_key = file("/Users/wk/.ssh/id_rsa.pub")
}

provider "digitalocean" {
  token = "${var.do_token}"
}

resource "digitalocean_droplet" "terraform" {
  image    = "docker-18-04"
  name     = "terraform-101"
  region   = "sgp1"
  size     = "s-1vcpu-2gb"
  tags     = ["terraform"]
  ssh_keys = [digitalocean_ssh_key.default.fingerprint]
}
