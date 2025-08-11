output "algorithm" {
  description = "Algorithm key code"
  value       = module.cloudflare_zone_dnssec.algorithm
}

output "digest" {
  description = "Digest hash"
  value       = module.cloudflare_zone_dnssec.digest
}

output "digest_algorithm" {
  description = "Type of digest algorithm"
  value       = module.cloudflare_zone_dnssec.digest_algorithm
}

output "digest_type" {
  description = "Coded type for digest algorithm"
  value       = module.cloudflare_zone_dnssec.digest_type
}

output "ds" {
  description = "Full DS record"
  value       = module.cloudflare_zone_dnssec.ds
}

output "flags" {
  description = "Flag for DNSSEC record"
  value       = module.cloudflare_zone_dnssec.flags
}

output "id" {
  description = "Identifier"
  value       = module.cloudflare_zone_dnssec.id
}

output "key_tag" {
  description = "Code for key tag"
  value       = module.cloudflare_zone_dnssec.key_tag
}

output "key_type" {
  description = "Algorithm key type"
  value       = module.cloudflare_zone_dnssec.key_type
}

output "modified_on" {
  description = "When DNSSEC was last modified"
  value       = module.cloudflare_zone_dnssec.modified_on
}

output "public_key" {
  description = "Public key for DS record"
  value       = module.cloudflare_zone_dnssec.public_key
}
