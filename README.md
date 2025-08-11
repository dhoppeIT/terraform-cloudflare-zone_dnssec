# terraform-cloudflare-zone_dnssec

Terraform module to manage the following Cloudflare resources:

* cloudflare_zone_dnssec

## Usage

Copy and paste the following code snippet to your Terraform configuration,
specify the required variables and run the command `terraform init`.

```hcl
module "cloudflare_account" {
  source  = "gitlab.com/terraform-child-modules-48151/terraform-cloudflare-account/local"
  version = "1.0.0"

  name = "dhoppeIT"
  type = "standard"
}

module "cloudflare_zone" {
  source  = "gitlab.com/terraform-child-modules-48151/terraform-cloudflare-zone/local"
  version = "1.0.0"

  account = {
    id = module.cloudflare_account.id
  }
  name = "dhoppe.dev"
}

module "cloudflare_zone_dnssec" {
  source  = "gitlab.com/terraform-child-modules-48151/terraform-cloudflare-zone_dnssec/local"
  version = "1.0.0"

  zone_id = module.cloudflare_zone["dhoppe.dev"].id
  status  = "active"
}
```

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_cloudflare"></a> [cloudflare](#requirement\_cloudflare) | ~> 5.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_cloudflare"></a> [cloudflare](#provider\_cloudflare) | ~> 5.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [cloudflare_zone_dnssec.this](https://registry.terraform.io/providers/cloudflare/cloudflare/latest/docs/resources/zone_dnssec) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_dnssec_multi_signer"></a> [dnssec\_multi\_signer](#input\_dnssec\_multi\_signer) | If true, multi-signer DNSSEC is enabled on the zone, allowing multiple providers to serve a DNSSEC-signed zone at the same time | `bool` | `null` | no |
| <a name="input_dnssec_presigned"></a> [dnssec\_presigned](#input\_dnssec\_presigned) | If true, allows Cloudflare to transfer in a DNSSEC-signed zone including signatures from an external provider, without requiring Cloudflare to sign any records on the fly | `bool` | `null` | no |
| <a name="input_dnssec_use_nsec3"></a> [dnssec\_use\_nsec3](#input\_dnssec\_use\_nsec3) | If true, enables the use of NSEC3 together with DNSSEC on the zone | `bool` | `null` | no |
| <a name="input_status"></a> [status](#input\_status) | Status of DNSSEC, based on user-desired state and presence of necessary records | `string` | `"disabled"` | no |
| <a name="input_zone_id"></a> [zone\_id](#input\_zone\_id) | Identifier | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_algorithm"></a> [algorithm](#output\_algorithm) | Algorithm key code |
| <a name="output_digest"></a> [digest](#output\_digest) | Digest hash |
| <a name="output_digest_algorithm"></a> [digest\_algorithm](#output\_digest\_algorithm) | Type of digest algorithm |
| <a name="output_digest_type"></a> [digest\_type](#output\_digest\_type) | Coded type for digest algorithm |
| <a name="output_ds"></a> [ds](#output\_ds) | Full DS record |
| <a name="output_flags"></a> [flags](#output\_flags) | Flag for DNSSEC record |
| <a name="output_id"></a> [id](#output\_id) | Identifier |
| <a name="output_key_tag"></a> [key\_tag](#output\_key\_tag) | Code for key tag |
| <a name="output_key_type"></a> [key\_type](#output\_key\_type) | Algorithm key type |
| <a name="output_modified_on"></a> [modified\_on](#output\_modified\_on) | When DNSSEC was last modified |
| <a name="output_public_key"></a> [public\_key](#output\_public\_key) | Public key for DS record |
<!-- END_TF_DOCS -->

## Authors

Created and maintained by [Dennis Hoppe](https://gitlab.com/dhoppeIT).

## License

Apache 2 licensed. See [LICENSE](LICENSE) for full details.
