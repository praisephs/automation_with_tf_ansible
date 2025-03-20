resource "digitalocean_ssh_key" "this" {
  name       = var.ssh_key_name
  public_key = var.ssh_key                         
}
resource "digitalocean_droplet" "web" {
  image   = var.droplet_image
  name    = var.droplet_name
  region  = var.droplet_region
  size    = var.droplet_size
  ssh_keys = [digitalocean_ssh_key.this.fingerprint]
}
