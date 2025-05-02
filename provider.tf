terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "2.50.0"
    }
  }
}

provider "digitalocean" {
  #token = var.do_token
}

data "digitalocean_ssh_key" "terraform" {
  name = "ssh_uyi_new"
}

