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

variable "ssh_key" {
  description = "The SSH key to create the droplet"
  type        = string
  
}

variable "ssh_key_name" {
  description = "The SSH key name to retrieve the droplet"
  type        = string
  
}
variable "domain_name" {
  description = "The domain name to create."
  type        = string
  default     = "test-cerebro.ng"
}

variable "a_records" {
  description = "List of A records to add to the domain."
  type = list(object({
    name  = string
    value = string
  }))
  default = [
    { name = "uyi", value = "162.243.89.221" },
    { name = "uyi2", value = "162.243.89.221" }
  ]
}

