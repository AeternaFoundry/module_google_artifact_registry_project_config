output "artifact_registry_project_configs_id" {
  description = "Map of id values across all artifact_registry_project_configs, keyed the same as var.artifact_registry_project_configs except keys with no id are omitted"
  value       = { for k, v in google_artifact_registry_project_config.artifact_registry_project_configs : k => v.id if v.id != null && length(v.id) > 0 }
}
output "artifact_registry_project_configs_location" {
  description = "Map of location values across all artifact_registry_project_configs, keyed the same as var.artifact_registry_project_configs except keys with no location are omitted"
  value       = { for k, v in google_artifact_registry_project_config.artifact_registry_project_configs : k => v.location if v.location != null && length(v.location) > 0 }
}
output "artifact_registry_project_configs_name" {
  description = "Map of name values across all artifact_registry_project_configs, keyed the same as var.artifact_registry_project_configs except keys with no name are omitted"
  value       = { for k, v in google_artifact_registry_project_config.artifact_registry_project_configs : k => v.name if v.name != null && length(v.name) > 0 }
}
output "artifact_registry_project_configs_platform_logs_config" {
  description = "Map of platform_logs_config values across all artifact_registry_project_configs, keyed the same as var.artifact_registry_project_configs except keys with no platform_logs_config are omitted"
  value       = { for k, v in google_artifact_registry_project_config.artifact_registry_project_configs : k => one(v.platform_logs_config) if v.platform_logs_config != null && length(v.platform_logs_config) > 0 }
}
output "artifact_registry_project_configs_project" {
  description = "Map of project values across all artifact_registry_project_configs, keyed the same as var.artifact_registry_project_configs except keys with no project are omitted"
  value       = { for k, v in google_artifact_registry_project_config.artifact_registry_project_configs : k => v.project if v.project != null && length(v.project) > 0 }
}

