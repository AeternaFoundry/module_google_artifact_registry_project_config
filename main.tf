resource "google_artifact_registry_project_config" "artifact_registry_project_configs" {
  for_each = var.artifact_registry_project_configs

  location = each.value.location
  project  = each.value.project

  dynamic "platform_logs_config" {
    for_each = each.value.platform_logs_config != null ? [each.value.platform_logs_config] : []
    content {
      logging_state  = platform_logs_config.value.logging_state
      severity_level = platform_logs_config.value.severity_level
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

