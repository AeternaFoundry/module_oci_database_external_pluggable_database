resource "oci_database_external_pluggable_database" "database_external_pluggable_databases" {
  for_each = var.database_external_pluggable_databases

  compartment_id                 = each.value.compartment_id
  display_name                   = each.value.display_name
  external_container_database_id = each.value.external_container_database_id
  defined_tags                   = each.value.defined_tags
  freeform_tags                  = each.value.freeform_tags
  source_id                      = each.value.source_id

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

