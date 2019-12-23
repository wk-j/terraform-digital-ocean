# resource "digitalocean_ssh_key" "default" {
#   name       = "wk@terraform"
#   public_key = file("/Users/wk/.ssh/id_rsa.pub")
# }

provider "digitalocean" {
  token = "${var.do_token}"
}

resource "digitalocean_droplet" "terraform" {
  image  = "docker-18-04"
  name   = "terraform-101"
  region = "sgp1"
  size   = "s-1vcpu-2gb"
  tags   = ["terraform"]
  #   ssh_keys = [digitalocean_ssh_key.default.fingerprint]
  ssh_keys = ["d9:6b:3f:9b:73:a6:02:00:f2:b4:15:83:f3:1f:cf:dc", "49:17:1a:b4:e5:db:0c:07:9d:2e:fe:a7:06:bb:af:e2"]
}
