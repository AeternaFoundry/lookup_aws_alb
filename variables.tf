variable "alb_lookup" {
  description = <<EOT
Map of alb_lookup, attributes below
Optional:
    - arn
    - name
    - region
    - tags
EOT

  type = map(object({
    arn    = optional(string)
    name   = optional(string)
    region = optional(string)
    tags   = optional(map(string))
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

