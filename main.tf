locals {
  communication_services = { for k1, v1 in var.communication_services : k1 => { data_location = v1.data_location, name = v1.name, resource_group_name = v1.resource_group_name, tags = v1.tags } }

  communication_service_email_domain_associations = merge([
    for k1, v1 in var.communication_services : {
      for k2, v2 in coalesce(v1.communication_service_email_domain_associations, {}) :
      "${k1}/${k2}" => merge(v2, {
        communication_service_id = module.communication_services.communication_services_id["${k1}"]
      })
    }
  ]...)
}

module "communication_services" {
  source                 = "git::https://github.com/AeternaModules/azurerm_communication_service.git?ref=v4.80.0"
  communication_services = local.communication_services
}

module "communication_service_email_domain_associations" {
  source                                          = "git::https://github.com/AeternaModules/azurerm_communication_service_email_domain_association.git?ref=v4.80.0"
  communication_service_email_domain_associations = local.communication_service_email_domain_associations
  depends_on                                      = [module.communication_services]
}

