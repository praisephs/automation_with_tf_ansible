variable "droplet_name" {
  description = "The name of the DigitalOcean droplet"
  type        = string
  default     = "web-vm"
}

variable "droplet_region" {
  description = "The region where the DigitalOcean droplet will be created"
  type        = string
  default     = "nyc2"
}

variable "droplet_size" {
  description = "The size of the DigitalOcean droplet"
  type        = string
  default     = "s-1vcpu-1gb"
}

variable "droplet_image" {
  description = "The image to use for the droplet"
  type        = string
  default     = "ubuntu-20-04-x64"
}

variable "do_token" {
  description = "The DigitalOcean API token"
  type        = string
  sensitive   = true
}

