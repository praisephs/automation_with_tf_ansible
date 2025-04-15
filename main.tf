data "digitalocean_ssh_key" "this" {
  name = var.ssh_key_name
}

resource "digitalocean_droplet" "this" {
  image    = var.droplet_image
  name     = var.droplet_name
  region   = var.droplet_region
  size     = var.droplet_size
  ssh_keys = [data.digitalocean_ssh_key.this.fingerprint]
}


