# resource "digitalocean_domain" "this" {
#   name = var.domain_name
# }

# resource "digitalocean_record" "this" {
#   for_each = {
#     "uyi"  = digitalocean_droplet.this.ipv4_address
#     "uyi2" = digitalocean_droplet.this.ipv4_address
#   }

#   domain = digitalocean_domain.this.id
#   type   = "A"
#   name   = each.key
#   value  = each.value

#   depends_on = [ digitalocean_droplet.this ]
# }

data "digitalocean_domain" "this" {
  name = var.domain_name
}

resource "digitalocean_record" "this" {
  for_each = { for record in var.a_records : record.name => digitalocean_droplet.this.ipv4_address }

  domain = data.digitalocean_domain.this.id
  type   = "A"
  name   = each.key
  value  = each.value

  depends_on = [digitalocean_droplet.this]
}

