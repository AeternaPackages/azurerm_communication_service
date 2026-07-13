variable "communication_services" {
  description = <<EOT
Map of communication_services, attributes below
Required:
    - name
    - resource_group_name
Optional:
    - data_location
    - tags
Nested communication_service_email_domain_associations (azurerm_communication_service_email_domain_association):
    Required:
        - email_service_domain_id
EOT

  type = map(object({
    name                = string
    resource_group_name = string
    data_location       = optional(string)
    tags                = optional(map(string))
    communication_service_email_domain_associations = optional(map(object({
      email_service_domain_id = string
    })))
  }))

  validation {
    condition = alltrue(concat(
      [for kk in keys(var.communication_services) : !strcontains(kk, "/")],
      flatten([for k0, v0 in var.communication_services : [for kk in keys(coalesce(v0.communication_service_email_domain_associations, {})) : !strcontains(kk, "/")]])
    ))
    error_message = "Map keys in this package must not contain '/': it is used internally as a nesting-key separator, so a key containing it can silently collide two different nested entries into one. Rename the offending key(s)."
  }
}
