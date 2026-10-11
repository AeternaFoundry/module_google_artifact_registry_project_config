variable "artifact_registry_project_configs" {
  description = <<EOT
Map of artifact_registry_project_configs, attributes below
Optional:
    - location
    - project
    - platform_logs_config (block):
        - logging_state (optional)
        - severity_level (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    location = optional(string)
    project  = optional(string)
    platform_logs_config = optional(object({
      logging_state  = optional(string)
      severity_level = optional(string)
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

