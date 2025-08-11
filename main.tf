resource "cloudflare_zone_dnssec" "this" {
  zone_id = var.zone_id

  dnssec_multi_signer = var.dnssec_multi_signer
  dnssec_presigned    = var.dnssec_presigned
  dnssec_use_nsec3    = var.dnssec_use_nsec3
  status              = var.status
}
