data "cloudflare_zone" "tomaryrpg-de" {
  name = "tomaryrpg.de"
}

resource "cloudflare_record" "test" {
  name    = "test"
  type    = "A"
  zone_id = data.cloudflare_zone.tomaryrpg-de.id
}
