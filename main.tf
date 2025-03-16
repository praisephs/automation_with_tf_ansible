resource "digitalocean_droplet" "web" {
  image   = var.droplet_image
  name    = var.droplet_name
  region  = var.droplet_region
  size    = var.droplet_size
}