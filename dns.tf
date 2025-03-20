# Create a new domain
resource "digitalocean_domain" "this" {
  name       = var.domain_name

}

# Add an A record to the domain for cerebro.africa
resource "digitalocean_record" "this" {
  domain = digitalocean_domain.this.id
  type   = "A"
  name   = var.a_records[0].name
  value  = var.a_records[0].value
}

resource "digitalocean_record" "that" {
  domain = digitalocean_domain.this.id
  type   = "A"
  name   = var.a_records[1].name
  value  = var.a_records[1].value
}
