variable "database_external_pluggable_databases" {
  description = <<EOT
Map of database_external_pluggable_databases, attributes below
Required:
    - compartment_id
    - display_name
    - external_container_database_id
Optional:
    - defined_tags
    - freeform_tags
    - source_id
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    compartment_id                 = string
    display_name                   = string
    external_container_database_id = string
    defined_tags                   = optional(map(string))
    freeform_tags                  = optional(map(string))
    source_id                      = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

