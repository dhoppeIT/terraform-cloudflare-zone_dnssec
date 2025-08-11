module "cloudflare_zone_dnssec" {
  source = "../../"

  zone_id = data.cloudflare_zones.this.result[0].id
  status  = "active"
}
