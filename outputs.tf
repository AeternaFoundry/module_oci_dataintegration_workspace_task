output "dataintegration_workspace_tasks_id" {
  description = "Map of id values across all dataintegration_workspace_tasks, keyed the same as var.dataintegration_workspace_tasks except keys with no id are omitted"
  value       = { for k, v in oci_dataintegration_workspace_task.dataintegration_workspace_tasks : k => v.id if v.id != null && length(v.id) > 0 }
}
output "dataintegration_workspace_tasks_api_call_mode" {
  description = "Map of api_call_mode values across all dataintegration_workspace_tasks, keyed the same as var.dataintegration_workspace_tasks except keys with no api_call_mode are omitted"
  value       = { for k, v in oci_dataintegration_workspace_task.dataintegration_workspace_tasks : k => v.api_call_mode if v.api_call_mode != null && length(v.api_call_mode) > 0 }
}
output "dataintegration_workspace_tasks_auth_config" {
  description = "Map of auth_config values across all dataintegration_workspace_tasks, keyed the same as var.dataintegration_workspace_tasks except keys with no auth_config are omitted"
  value       = { for k, v in oci_dataintegration_workspace_task.dataintegration_workspace_tasks : k => one(v.auth_config) if v.auth_config != null && length(v.auth_config) > 0 }
}
output "dataintegration_workspace_tasks_cancel_rest_call_config" {
  description = "Map of cancel_rest_call_config values across all dataintegration_workspace_tasks, keyed the same as var.dataintegration_workspace_tasks except keys with no cancel_rest_call_config are omitted"
  value       = { for k, v in oci_dataintegration_workspace_task.dataintegration_workspace_tasks : k => one(v.cancel_rest_call_config) if v.cancel_rest_call_config != null && length(v.cancel_rest_call_config) > 0 }
}
output "dataintegration_workspace_tasks_config_provider_delegate" {
  description = "Map of config_provider_delegate values across all dataintegration_workspace_tasks, keyed the same as var.dataintegration_workspace_tasks except keys with no config_provider_delegate are omitted"
  value       = { for k, v in oci_dataintegration_workspace_task.dataintegration_workspace_tasks : k => one(v.config_provider_delegate) if v.config_provider_delegate != null && length(v.config_provider_delegate) > 0 }
}
output "dataintegration_workspace_tasks_description" {
  description = "Map of description values across all dataintegration_workspace_tasks, keyed the same as var.dataintegration_workspace_tasks except keys with no description are omitted"
  value       = { for k, v in oci_dataintegration_workspace_task.dataintegration_workspace_tasks : k => v.description if v.description != null && length(v.description) > 0 }
}
output "dataintegration_workspace_tasks_execute_rest_call_config" {
  description = "Map of execute_rest_call_config values across all dataintegration_workspace_tasks, keyed the same as var.dataintegration_workspace_tasks except keys with no execute_rest_call_config are omitted"
  value       = { for k, v in oci_dataintegration_workspace_task.dataintegration_workspace_tasks : k => one(v.execute_rest_call_config) if v.execute_rest_call_config != null && length(v.execute_rest_call_config) > 0 }
}
output "dataintegration_workspace_tasks_identifier" {
  description = "Map of identifier values across all dataintegration_workspace_tasks, keyed the same as var.dataintegration_workspace_tasks except keys with no identifier are omitted"
  value       = { for k, v in oci_dataintegration_workspace_task.dataintegration_workspace_tasks : k => v.identifier if v.identifier != null && length(v.identifier) > 0 }
}
output "dataintegration_workspace_tasks_input_ports" {
  description = "Map of input_ports values across all dataintegration_workspace_tasks, keyed the same as var.dataintegration_workspace_tasks except keys with no input_ports are omitted"
  value       = { for k, v in oci_dataintegration_workspace_task.dataintegration_workspace_tasks : k => v.input_ports if v.input_ports != null && length(v.input_ports) > 0 }
}
output "dataintegration_workspace_tasks_is_single_load" {
  description = "Map of is_single_load values across all dataintegration_workspace_tasks, keyed the same as var.dataintegration_workspace_tasks except keys with no is_single_load are omitted"
  value       = { for k, v in oci_dataintegration_workspace_task.dataintegration_workspace_tasks : k => v.is_single_load if v.is_single_load != null }
}
output "dataintegration_workspace_tasks_key" {
  description = "Map of key values across all dataintegration_workspace_tasks, keyed the same as var.dataintegration_workspace_tasks except keys with no key are omitted"
  value       = { for k, v in oci_dataintegration_workspace_task.dataintegration_workspace_tasks : k => v.key if v.key != null && length(v.key) > 0 }
}
output "dataintegration_workspace_tasks_key_map" {
  description = "Map of key_map values across all dataintegration_workspace_tasks, keyed the same as var.dataintegration_workspace_tasks except keys with no key_map are omitted"
  value       = { for k, v in oci_dataintegration_workspace_task.dataintegration_workspace_tasks : k => v.key_map if v.key_map != null && length(v.key_map) > 0 }
}
output "dataintegration_workspace_tasks_metadata" {
  description = "Map of metadata values across all dataintegration_workspace_tasks, keyed the same as var.dataintegration_workspace_tasks except keys with no metadata are omitted"
  value       = { for k, v in oci_dataintegration_workspace_task.dataintegration_workspace_tasks : k => v.metadata if v.metadata != null && length(v.metadata) > 0 }
}
output "dataintegration_workspace_tasks_model_type" {
  description = "Map of model_type values across all dataintegration_workspace_tasks, keyed the same as var.dataintegration_workspace_tasks except keys with no model_type are omitted"
  value       = { for k, v in oci_dataintegration_workspace_task.dataintegration_workspace_tasks : k => v.model_type if v.model_type != null && length(v.model_type) > 0 }
}
output "dataintegration_workspace_tasks_model_version" {
  description = "Map of model_version values across all dataintegration_workspace_tasks, keyed the same as var.dataintegration_workspace_tasks except keys with no model_version are omitted"
  value       = { for k, v in oci_dataintegration_workspace_task.dataintegration_workspace_tasks : k => v.model_version if v.model_version != null && length(v.model_version) > 0 }
}
output "dataintegration_workspace_tasks_name" {
  description = "Map of name values across all dataintegration_workspace_tasks, keyed the same as var.dataintegration_workspace_tasks except keys with no name are omitted"
  value       = { for k, v in oci_dataintegration_workspace_task.dataintegration_workspace_tasks : k => v.name if v.name != null && length(v.name) > 0 }
}
output "dataintegration_workspace_tasks_object_status" {
  description = "Map of object_status values across all dataintegration_workspace_tasks, keyed the same as var.dataintegration_workspace_tasks except keys with no object_status are omitted"
  value       = { for k, v in oci_dataintegration_workspace_task.dataintegration_workspace_tasks : k => v.object_status if v.object_status != null }
}
output "dataintegration_workspace_tasks_object_version" {
  description = "Map of object_version values across all dataintegration_workspace_tasks, keyed the same as var.dataintegration_workspace_tasks except keys with no object_version are omitted"
  value       = { for k, v in oci_dataintegration_workspace_task.dataintegration_workspace_tasks : k => v.object_version if v.object_version != null }
}
output "dataintegration_workspace_tasks_op_config_values" {
  description = "Map of op_config_values values across all dataintegration_workspace_tasks, keyed the same as var.dataintegration_workspace_tasks except keys with no op_config_values are omitted"
  value       = { for k, v in oci_dataintegration_workspace_task.dataintegration_workspace_tasks : k => one(v.op_config_values) if v.op_config_values != null && length(v.op_config_values) > 0 }
}
output "dataintegration_workspace_tasks_operation" {
  description = "Map of operation values across all dataintegration_workspace_tasks, keyed the same as var.dataintegration_workspace_tasks except keys with no operation are omitted"
  value       = { for k, v in oci_dataintegration_workspace_task.dataintegration_workspace_tasks : k => v.operation if v.operation != null && length(v.operation) > 0 }
}
output "dataintegration_workspace_tasks_output_ports" {
  description = "Map of output_ports values across all dataintegration_workspace_tasks, keyed the same as var.dataintegration_workspace_tasks except keys with no output_ports are omitted"
  value       = { for k, v in oci_dataintegration_workspace_task.dataintegration_workspace_tasks : k => v.output_ports if v.output_ports != null && length(v.output_ports) > 0 }
}
output "dataintegration_workspace_tasks_parallel_load_limit" {
  description = "Map of parallel_load_limit values across all dataintegration_workspace_tasks, keyed the same as var.dataintegration_workspace_tasks except keys with no parallel_load_limit are omitted"
  value       = { for k, v in oci_dataintegration_workspace_task.dataintegration_workspace_tasks : k => v.parallel_load_limit if v.parallel_load_limit != null }
}
output "dataintegration_workspace_tasks_parameters" {
  description = "Map of parameters values across all dataintegration_workspace_tasks, keyed the same as var.dataintegration_workspace_tasks except keys with no parameters are omitted"
  value       = { for k, v in oci_dataintegration_workspace_task.dataintegration_workspace_tasks : k => v.parameters if v.parameters != null && length(v.parameters) > 0 }
}
output "dataintegration_workspace_tasks_parent_ref" {
  description = "Map of parent_ref values across all dataintegration_workspace_tasks, keyed the same as var.dataintegration_workspace_tasks except keys with no parent_ref are omitted"
  value       = { for k, v in oci_dataintegration_workspace_task.dataintegration_workspace_tasks : k => one(v.parent_ref) if v.parent_ref != null && length(v.parent_ref) > 0 }
}
output "dataintegration_workspace_tasks_poll_rest_call_config" {
  description = "Map of poll_rest_call_config values across all dataintegration_workspace_tasks, keyed the same as var.dataintegration_workspace_tasks except keys with no poll_rest_call_config are omitted"
  value       = { for k, v in oci_dataintegration_workspace_task.dataintegration_workspace_tasks : k => one(v.poll_rest_call_config) if v.poll_rest_call_config != null && length(v.poll_rest_call_config) > 0 }
}
output "dataintegration_workspace_tasks_registry_metadata" {
  description = "Map of registry_metadata values across all dataintegration_workspace_tasks, keyed the same as var.dataintegration_workspace_tasks except keys with no registry_metadata are omitted"
  value       = { for k, v in oci_dataintegration_workspace_task.dataintegration_workspace_tasks : k => one(v.registry_metadata) if v.registry_metadata != null && length(v.registry_metadata) > 0 }
}
output "dataintegration_workspace_tasks_typed_expressions" {
  description = "Map of typed_expressions values across all dataintegration_workspace_tasks, keyed the same as var.dataintegration_workspace_tasks except keys with no typed_expressions are omitted"
  value       = { for k, v in oci_dataintegration_workspace_task.dataintegration_workspace_tasks : k => v.typed_expressions if v.typed_expressions != null && length(v.typed_expressions) > 0 }
}
output "dataintegration_workspace_tasks_workspace_id" {
  description = "Map of workspace_id values across all dataintegration_workspace_tasks, keyed the same as var.dataintegration_workspace_tasks except keys with no workspace_id are omitted"
  value       = { for k, v in oci_dataintegration_workspace_task.dataintegration_workspace_tasks : k => v.workspace_id if v.workspace_id != null && length(v.workspace_id) > 0 }
}

