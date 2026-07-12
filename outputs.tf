# --- azurerm_communication_service ---
output "communication_services_data_location" {
  description = "Map of data_location values across all communication_services, keyed the same as var.communication_services"
  value       = module.communication_services.communication_services_data_location
}

output "communication_services_hostname" {
  description = "Map of hostname values across all communication_services, keyed the same as var.communication_services"
  value       = module.communication_services.communication_services_hostname
}

output "communication_services_name" {
  description = "Map of name values across all communication_services, keyed the same as var.communication_services"
  value       = module.communication_services.communication_services_name
}

output "communication_services_primary_connection_string" {
  description = "Map of primary_connection_string values across all communication_services, keyed the same as var.communication_services"
  value       = module.communication_services.communication_services_primary_connection_string
  sensitive   = true
}

output "communication_services_primary_key" {
  description = "Map of primary_key values across all communication_services, keyed the same as var.communication_services"
  value       = module.communication_services.communication_services_primary_key
  sensitive   = true
}

output "communication_services_resource_group_name" {
  description = "Map of resource_group_name values across all communication_services, keyed the same as var.communication_services"
  value       = module.communication_services.communication_services_resource_group_name
}

output "communication_services_secondary_connection_string" {
  description = "Map of secondary_connection_string values across all communication_services, keyed the same as var.communication_services"
  value       = module.communication_services.communication_services_secondary_connection_string
  sensitive   = true
}

output "communication_services_secondary_key" {
  description = "Map of secondary_key values across all communication_services, keyed the same as var.communication_services"
  value       = module.communication_services.communication_services_secondary_key
  sensitive   = true
}

output "communication_services_tags" {
  description = "Map of tags values across all communication_services, keyed the same as var.communication_services"
  value       = module.communication_services.communication_services_tags
}

# --- azurerm_communication_service_email_domain_association ---
output "communication_service_email_domain_associations_communication_service_id" {
  description = "Map of communication_service_id values across all communication_service_email_domain_associations, keyed the same as var.communication_service_email_domain_associations"
  value       = module.communication_service_email_domain_associations.communication_service_email_domain_associations_communication_service_id
}

output "communication_service_email_domain_associations_email_service_domain_id" {
  description = "Map of email_service_domain_id values across all communication_service_email_domain_associations, keyed the same as var.communication_service_email_domain_associations"
  value       = module.communication_service_email_domain_associations.communication_service_email_domain_associations_email_service_domain_id
}


