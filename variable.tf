variable "droplet_name" {
  description = "The name of the DigitalOcean droplet"
  type        = string
  default     = "web-vm-uyi"
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

variable "domain_name" {
  description = "The existing base domain."
  type        = string
  default     = "cerebro.ng"
}


variable "a_records" {
  type = list(object({
    name = string
  }))
  default = [
    { name = "uyi" },
    { name = "uyi2" }
  ]
}


# variable "a_records" {
#   description = "List of A records to add to the domain."
#   type = list(object({
#     name  = string
#     value = string
#   }))
#   default = []  # Default is empty, we will populate it dynamically
# }


variable "ssh_key" {
  description = "The SSH key to create the droplet"
  type        = string

}

variable "ssh_key_name" {
  description = "The SSH key name to retrieve the droplet"
  type        = string

}

