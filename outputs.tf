# --- azurerm_communication_service ---
output "communication_services" {
  description = "All communication_service resources"
  value       = module.communication_services.communication_services
  sensitive   = true
}
output "communication_services_data_location" {
  description = "List of data_location values across all communication_services"
  value       = [for k, v in module.communication_services.communication_services : v.data_location]
}
output "communication_services_hostname" {
  description = "List of hostname values across all communication_services"
  value       = [for k, v in module.communication_services.communication_services : v.hostname]
}
output "communication_services_name" {
  description = "List of name values across all communication_services"
  value       = [for k, v in module.communication_services.communication_services : v.name]
}
output "communication_services_primary_connection_string" {
  description = "List of primary_connection_string values across all communication_services"
  value       = [for k, v in module.communication_services.communication_services : v.primary_connection_string]
  sensitive   = true
}
output "communication_services_primary_key" {
  description = "List of primary_key values across all communication_services"
  value       = [for k, v in module.communication_services.communication_services : v.primary_key]
  sensitive   = true
}
output "communication_services_resource_group_name" {
  description = "List of resource_group_name values across all communication_services"
  value       = [for k, v in module.communication_services.communication_services : v.resource_group_name]
}
output "communication_services_secondary_connection_string" {
  description = "List of secondary_connection_string values across all communication_services"
  value       = [for k, v in module.communication_services.communication_services : v.secondary_connection_string]
  sensitive   = true
}
output "communication_services_secondary_key" {
  description = "List of secondary_key values across all communication_services"
  value       = [for k, v in module.communication_services.communication_services : v.secondary_key]
  sensitive   = true
}
output "communication_services_tags" {
  description = "List of tags values across all communication_services"
  value       = [for k, v in module.communication_services.communication_services : v.tags]
}


# --- azurerm_communication_service_email_domain_association ---
output "communication_service_email_domain_associations" {
  description = "All communication_service_email_domain_association resources"
  value       = module.communication_service_email_domain_associations.communication_service_email_domain_associations
}
output "communication_service_email_domain_associations_communication_service_id" {
  description = "List of communication_service_id values across all communication_service_email_domain_associations"
  value       = [for k, v in module.communication_service_email_domain_associations.communication_service_email_domain_associations : v.communication_service_id]
}
output "communication_service_email_domain_associations_email_service_domain_id" {
  description = "List of email_service_domain_id values across all communication_service_email_domain_associations"
  value       = [for k, v in module.communication_service_email_domain_associations.communication_service_email_domain_associations : v.email_service_domain_id]
}



