output "droplet_output" {
  value = digitalocean_droplet.terraform.ipv4_address
}
