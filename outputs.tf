output "algorithm" {
  description = "Algorithm key code"
  value       = cloudflare_zone_dnssec.this.algorithm
}

output "digest" {
  description = "Digest hash"
  value       = cloudflare_zone_dnssec.this.digest
}

output "digest_algorithm" {
  description = "Type of digest algorithm"
  value       = cloudflare_zone_dnssec.this.digest_algorithm
}

output "digest_type" {
  description = "Coded type for digest algorithm"
  value       = cloudflare_zone_dnssec.this.digest_type
}

output "ds" {
  description = "Full DS record"
  value       = cloudflare_zone_dnssec.this.ds
}

output "flags" {
  description = "Flag for DNSSEC record"
  value       = cloudflare_zone_dnssec.this.flags
}

output "id" {
  description = "Identifier"
  value       = cloudflare_zone_dnssec.this.id
}

output "key_tag" {
  description = "Code for key tag"
  value       = cloudflare_zone_dnssec.this.key_tag
}

output "key_type" {
  description = "Algorithm key type"
  value       = cloudflare_zone_dnssec.this.key_type
}

output "modified_on" {
  description = "When DNSSEC was last modified"
  value       = cloudflare_zone_dnssec.this.modified_on
}

output "public_key" {
  description = "Public key for DS record"
  value       = cloudflare_zone_dnssec.this.public_key
}
