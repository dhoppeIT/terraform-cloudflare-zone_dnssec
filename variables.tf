variable "zone_id" {
  type        = string
  description = "Identifier"
}

variable "dnssec_multi_signer" {
  type        = bool
  default     = null
  description = "If true, multi-signer DNSSEC is enabled on the zone, allowing multiple providers to serve a DNSSEC-signed zone at the same time"
}

variable "dnssec_presigned" {
  type        = bool
  default     = null
  description = "If true, allows Cloudflare to transfer in a DNSSEC-signed zone including signatures from an external provider, without requiring Cloudflare to sign any records on the fly"
}

variable "dnssec_use_nsec3" {
  type        = bool
  default     = null
  description = "If true, enables the use of NSEC3 together with DNSSEC on the zone"
}

variable "status" {
  type        = string
  default     = "disabled"
  description = "Status of DNSSEC, based on user-desired state and presence of necessary records"

  validation {
    condition     = contains(["active", "disabled"], var.status)
    error_message = "Valid values are active, disabled"
  }
}
