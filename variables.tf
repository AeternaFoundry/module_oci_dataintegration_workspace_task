variable "dataintegration_workspace_tasks" {
  description = <<EOT
Map of dataintegration_workspace_tasks, attributes below
Required:
    - identifier
    - model_type
    - name
    - workspace_id
    - registry_metadata (block):
        - aggregator_key (required)
        - is_favorite (optional)
        - key (optional)
        - labels (optional)
        - registry_version (optional)
Optional:
    - api_call_mode
    - description
    - is_single_load
    - key
    - model_version
    - object_status
    - operation
    - parallel_load_limit
    - auth_config (block):
        - key (optional)
        - model_type (optional)
        - model_version (optional)
        - parent_ref (optional, block):
            - parent (optional)
            - root_doc_id (optional)
        - resource_principal_source (optional)
    - cancel_rest_call_config (block):
        - config_values (optional, block):
            - config_param_values (optional, block):
                - request_payload (optional, block):
                    - parameter_value (optional)
                    - ref_value (optional, block):
                        - config_values (optional, block):
                            - config_param_values (optional, block):
                                - data_param (optional, block):
                                    - string_value (optional)
                        - key (optional)
                        - model_type (optional)
                - request_url (optional, block):
                    - string_value (optional)
            - parent_ref (optional, block):
                - parent (optional)
                - root_doc_id (optional)
        - key (optional)
        - method_type (optional)
        - model_type (optional)
        - request_headers (optional)
    - config_provider_delegate (block):
        - bindings (optional, block):
            - key (optional)
            - parameter_values (optional, block):
                - root_object_value (optional, block):
                    - key (optional)
                    - model_type (optional)
                    - model_version (optional)
                    - object_status (optional)
                - simple_value (optional)
    - execute_rest_call_config (block):
        - config_values (optional, block):
            - config_param_values (optional, block):
                - request_payload (optional, block):
                    - parameter_value (optional)
                    - ref_value (optional, block):
                        - config_values (optional, block):
                            - config_param_values (optional, block):
                                - data_param (optional, block):
                                    - string_value (optional)
                        - key (optional)
                        - model_type (optional)
                - request_url (optional, block):
                    - string_value (optional)
            - parent_ref (optional, block):
                - parent (optional)
                - root_doc_id (optional)
        - key (optional)
        - method_type (optional)
        - model_type (optional)
        - request_headers (optional)
    - input_ports (block):
        - config_values (optional, block):
            - config_param_values (optional, block):
                - int_value (optional)
                - object_value (optional)
                - parameter_value (optional)
                - ref_value (optional)
                - root_object_value (optional)
                - string_value (optional)
            - parent_ref (optional, block):
                - parent (optional)
                - root_doc_id (optional)
        - description (optional)
        - fields (optional)
        - key (optional)
        - model_type (required)
        - model_version (optional)
        - name (optional)
        - object_status (optional)
        - parent_ref (optional, block):
            - parent (optional)
            - root_doc_id (optional)
        - port_type (optional)
    - op_config_values (block):
        - config_param_values (optional, block):
            - config_param_value (optional, block):
                - int_value (optional)
                - object_value (optional)
                - parameter_value (optional)
                - ref_value (optional, block):
                    - key (optional)
                    - model_type (optional)
                    - model_version (optional)
                    - name (optional)
                    - object_status (optional)
                - root_object_value (optional, block):
                    - key (optional)
                    - model_type (optional)
                    - model_version (optional)
                    - object_status (optional)
                - string_value (optional)
            - key (optional)
        - parent_ref (optional, block):
            - parent (optional)
            - root_doc_id (optional)
    - output_ports (block):
        - config_values (optional, block):
            - config_param_values (optional, block):
                - int_value (optional)
                - object_value (optional)
                - parameter_value (optional)
                - ref_value (optional)
                - root_object_value (optional)
                - string_value (optional)
            - parent_ref (optional, block):
                - parent (optional)
                - root_doc_id (optional)
        - description (optional)
        - fields (optional)
        - key (optional)
        - model_type (required)
        - model_version (optional)
        - name (optional)
        - object_status (optional)
        - parent_ref (optional, block):
            - parent (optional)
            - root_doc_id (optional)
        - port_type (optional)
    - parameters (block):
        - config_values (optional, block):
            - config_param_values (optional, block):
                - config_param_value (optional, block):
                    - int_value (optional)
                    - object_value (optional)
                    - parameter_value (optional)
                    - ref_value (optional, block):
                        - key (optional)
                        - model_type (optional)
                        - model_version (optional)
                        - name (optional)
                        - object_status (optional)
                    - root_object_value (optional, block):
                        - key (optional)
                        - model_type (optional)
                        - model_version (optional)
                        - object_status (optional)
                    - string_value (optional)
                - key (optional)
            - parent_ref (optional, block):
                - parent (optional)
                - root_doc_id (optional)
        - default_value (optional)
        - description (optional)
        - is_input (optional)
        - is_output (optional)
        - key (optional)
        - model_type (required)
        - model_version (optional)
        - name (optional)
        - object_status (optional)
        - output_aggregation_type (optional)
        - parent_ref (optional, block):
            - parent (optional)
            - root_doc_id (optional)
        - root_object_default_value (optional)
        - type (optional)
        - type_name (optional)
        - used_for (optional)
    - parent_ref (block):
        - parent (optional)
        - root_doc_id (optional)
    - poll_rest_call_config (block):
        - config_values (optional, block):
            - config_param_values (optional, block):
                - poll_condition (optional, block):
                    - parameter_value (optional)
                    - ref_value (optional, block):
                        - expr_string (optional)
                        - key (optional)
                        - model_type (optional)
                        - name (optional)
                - poll_interval (optional, block):
                    - object_value (optional)
                - poll_interval_unit (optional, block):
                    - string_value (optional)
                - poll_max_duration (optional, block):
                    - object_value (optional)
                - poll_max_duration_unit (optional, block):
                    - string_value (optional)
                - request_payload (optional, block):
                    - parameter_value (optional)
                    - ref_value (optional, block):
                        - config_values (optional, block):
                            - config_param_values (optional, block):
                                - data_param (optional, block):
                                    - string_value (optional)
                        - key (optional)
                        - model_type (optional)
                        - name (optional)
                - request_url (optional, block):
                    - string_value (optional)
            - parent_ref (optional, block):
                - parent (optional)
                - root_doc_id (optional)
        - key (optional)
        - method_type (optional)
        - model_type (optional)
        - request_headers (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
    - typed_expressions (block):
        - config_values (optional, block):
            - config_param_values (optional, block):
                - length (optional, block):
                    - int_value (optional)
                - scale (optional, block):
                    - int_value (optional)
            - parent_ref (optional, block):
                - parent (optional)
                - root_doc_id (optional)
        - description (optional)
        - expression (optional)
        - key (optional)
        - model_type (optional)
        - model_version (optional)
        - name (optional)
        - object_status (optional)
        - parent_ref (optional, block):
            - parent (optional)
            - root_doc_id (optional)
        - type (optional)
EOT

  type = map(object({
    identifier          = string
    model_type          = string
    name                = string
    workspace_id        = string
    api_call_mode       = optional(string)
    description         = optional(string)
    is_single_load      = optional(bool)
    key                 = optional(string)
    model_version       = optional(string)
    object_status       = optional(number)
    operation           = optional(string)
    parallel_load_limit = optional(number)
    registry_metadata = object({
      aggregator_key   = string
      is_favorite      = optional(bool)
      key              = optional(string)
      labels           = optional(list(string))
      registry_version = optional(number)
    })
    auth_config = optional(object({
      key           = optional(string)
      model_type    = optional(string)
      model_version = optional(string)
      parent_ref = optional(object({
        parent      = optional(string)
        root_doc_id = optional(string)
      }))
      resource_principal_source = optional(string)
    }))
    cancel_rest_call_config = optional(object({
      config_values = optional(object({
        config_param_values = optional(object({
          request_payload = optional(object({
            parameter_value = optional(string)
            ref_value = optional(object({
              config_values = optional(object({
                config_param_values = optional(object({
                  data_param = optional(object({
                    string_value = optional(string)
                  }))
                }))
              }))
              key        = optional(string)
              model_type = optional(string)
            }))
          }))
          request_url = optional(object({
            string_value = optional(string)
          }))
        }))
        parent_ref = optional(object({
          parent      = optional(string)
          root_doc_id = optional(string)
        }))
      }))
      key             = optional(string)
      method_type     = optional(string)
      model_type      = optional(string)
      request_headers = optional(map(string))
    }))
    config_provider_delegate = optional(object({
      bindings = optional(list(object({
        key = optional(string)
        parameter_values = optional(object({
          root_object_value = optional(object({
            key           = optional(string)
            model_type    = optional(string)
            model_version = optional(string)
            object_status = optional(number)
          }))
          simple_value = optional(string)
        }))
      })))
    }))
    execute_rest_call_config = optional(object({
      config_values = optional(object({
        config_param_values = optional(object({
          request_payload = optional(object({
            parameter_value = optional(string)
            ref_value = optional(object({
              config_values = optional(object({
                config_param_values = optional(object({
                  data_param = optional(object({
                    string_value = optional(string)
                  }))
                }))
              }))
              key        = optional(string)
              model_type = optional(string)
            }))
          }))
          request_url = optional(object({
            string_value = optional(string)
          }))
        }))
        parent_ref = optional(object({
          parent      = optional(string)
          root_doc_id = optional(string)
        }))
      }))
      key             = optional(string)
      method_type     = optional(string)
      model_type      = optional(string)
      request_headers = optional(map(string))
    }))
    input_ports = optional(list(object({
      config_values = optional(object({
        config_param_values = optional(object({
          int_value         = optional(number)
          object_value      = optional(string)
          parameter_value   = optional(string)
          ref_value         = optional(string)
          root_object_value = optional(string)
          string_value      = optional(string)
        }))
        parent_ref = optional(object({
          parent      = optional(string)
          root_doc_id = optional(string)
        }))
      }))
      description   = optional(string)
      fields        = optional(list(string))
      key           = optional(string)
      model_type    = string
      model_version = optional(string)
      name          = optional(string)
      object_status = optional(number)
      parent_ref = optional(object({
        parent      = optional(string)
        root_doc_id = optional(string)
      }))
      port_type = optional(string)
    })))
    op_config_values = optional(object({
      config_param_values = optional(object({
        config_param_value = optional(object({
          int_value       = optional(number)
          object_value    = optional(string)
          parameter_value = optional(string)
          ref_value = optional(object({
            key           = optional(string)
            model_type    = optional(string)
            model_version = optional(string)
            name          = optional(string)
            object_status = optional(number)
          }))
          root_object_value = optional(object({
            key           = optional(string)
            model_type    = optional(string)
            model_version = optional(string)
            object_status = optional(number)
          }))
          string_value = optional(string)
        }))
        key = optional(string)
      }))
      parent_ref = optional(object({
        parent      = optional(string)
        root_doc_id = optional(string)
      }))
    }))
    output_ports = optional(list(object({
      config_values = optional(object({
        config_param_values = optional(object({
          int_value         = optional(number)
          object_value      = optional(string)
          parameter_value   = optional(string)
          ref_value         = optional(string)
          root_object_value = optional(string)
          string_value      = optional(string)
        }))
        parent_ref = optional(object({
          parent      = optional(string)
          root_doc_id = optional(string)
        }))
      }))
      description   = optional(string)
      fields        = optional(list(string))
      key           = optional(string)
      model_type    = string
      model_version = optional(string)
      name          = optional(string)
      object_status = optional(number)
      parent_ref = optional(object({
        parent      = optional(string)
        root_doc_id = optional(string)
      }))
      port_type = optional(string)
    })))
    parameters = optional(list(object({
      config_values = optional(object({
        config_param_values = optional(object({
          config_param_value = optional(object({
            int_value       = optional(number)
            object_value    = optional(string)
            parameter_value = optional(string)
            ref_value = optional(object({
              key           = optional(string)
              model_type    = optional(string)
              model_version = optional(string)
              name          = optional(string)
              object_status = optional(number)
            }))
            root_object_value = optional(object({
              key           = optional(string)
              model_type    = optional(string)
              model_version = optional(string)
              object_status = optional(number)
            }))
            string_value = optional(string)
          }))
          key = optional(string)
        }))
        parent_ref = optional(object({
          parent      = optional(string)
          root_doc_id = optional(string)
        }))
      }))
      default_value           = optional(string)
      description             = optional(string)
      is_input                = optional(bool)
      is_output               = optional(bool)
      key                     = optional(string)
      model_type              = string
      model_version           = optional(string)
      name                    = optional(string)
      object_status           = optional(number)
      output_aggregation_type = optional(string)
      parent_ref = optional(object({
        parent      = optional(string)
        root_doc_id = optional(string)
      }))
      root_object_default_value = optional(string)
      type                      = optional(string)
      type_name                 = optional(string)
      used_for                  = optional(string)
    })))
    parent_ref = optional(object({
      parent      = optional(string)
      root_doc_id = optional(string)
    }))
    poll_rest_call_config = optional(object({
      config_values = optional(object({
        config_param_values = optional(object({
          poll_condition = optional(object({
            parameter_value = optional(string)
            ref_value = optional(object({
              expr_string = optional(string)
              key         = optional(string)
              model_type  = optional(string)
              name        = optional(string)
            }))
          }))
          poll_interval = optional(object({
            object_value = optional(number)
          }))
          poll_interval_unit = optional(object({
            string_value = optional(string)
          }))
          poll_max_duration = optional(object({
            object_value = optional(number)
          }))
          poll_max_duration_unit = optional(object({
            string_value = optional(string)
          }))
          request_payload = optional(object({
            parameter_value = optional(string)
            ref_value = optional(object({
              config_values = optional(object({
                config_param_values = optional(object({
                  data_param = optional(object({
                    string_value = optional(string)
                  }))
                }))
              }))
              key        = optional(string)
              model_type = optional(string)
              name       = optional(string)
            }))
          }))
          request_url = optional(object({
            string_value = optional(string)
          }))
        }))
        parent_ref = optional(object({
          parent      = optional(string)
          root_doc_id = optional(string)
        }))
      }))
      key             = optional(string)
      method_type     = optional(string)
      model_type      = optional(string)
      request_headers = optional(map(string))
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
    typed_expressions = optional(list(object({
      config_values = optional(object({
        config_param_values = optional(object({
          length = optional(object({
            int_value = optional(number)
          }))
          scale = optional(object({
            int_value = optional(number)
          }))
        }))
        parent_ref = optional(object({
          parent      = optional(string)
          root_doc_id = optional(string)
        }))
      }))
      description   = optional(string)
      expression    = optional(string)
      key           = optional(string)
      model_type    = optional(string)
      model_version = optional(string)
      name          = optional(string)
      object_status = optional(number)
      parent_ref = optional(object({
        parent      = optional(string)
        root_doc_id = optional(string)
      }))
      type = optional(string)
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.dataintegration_workspace_tasks : (
        contains([for v in ["REST_TASK"] : lower(v)], lower(v.model_type))
      )
    ])
    error_message = "must be one of: \"REST_TASK\""
  }
  validation {
    condition = alltrue([
      for k, v in var.dataintegration_workspace_tasks : (
        v.api_call_mode == null || (contains(["SYNCHRONOUS", "ASYNC_GENERIC"], v.api_call_mode))
      )
    ])
    error_message = "must be one of: \"SYNCHRONOUS\", \"ASYNC_GENERIC\""
  }
  validation {
    condition = alltrue([
      for k, v in var.dataintegration_workspace_tasks : (
        v.auth_config == null || (v.auth_config.model_type == null || (contains([for v in ["OCI_RESOURCE_AUTH_CONFIG", "NO_AUTH_CONFIG"] : lower(v)], lower(v.auth_config.model_type))))
      )
    ])
    error_message = "must be one of: \"OCI_RESOURCE_AUTH_CONFIG\", \"NO_AUTH_CONFIG\""
  }
  validation {
    condition = alltrue([
      for k, v in var.dataintegration_workspace_tasks : (
        v.auth_config == null || (v.auth_config.resource_principal_source == null || (contains(["WORKSPACE", "APPLICATION"], v.auth_config.resource_principal_source)))
      )
    ])
    error_message = "must be one of: \"WORKSPACE\", \"APPLICATION\""
  }
  validation {
    condition = alltrue([
      for k, v in var.dataintegration_workspace_tasks : (
        v.cancel_rest_call_config == null || (v.cancel_rest_call_config.model_type == null || (contains(["CANCEL_REST_CALL_CONFIG"], v.cancel_rest_call_config.model_type)))
      )
    ])
    error_message = "must be one of: \"CANCEL_REST_CALL_CONFIG\""
  }
  validation {
    condition = alltrue([
      for k, v in var.dataintegration_workspace_tasks : (
        v.cancel_rest_call_config == null || (v.cancel_rest_call_config.config_values == null || (v.cancel_rest_call_config.config_values.config_param_values == null || (v.cancel_rest_call_config.config_values.config_param_values.request_payload == null || (v.cancel_rest_call_config.config_values.config_param_values.request_payload.ref_value == null || (v.cancel_rest_call_config.config_values.config_param_values.request_payload.ref_value.model_type == null || (contains(["JSON_TEXT"], v.cancel_rest_call_config.config_values.config_param_values.request_payload.ref_value.model_type)))))))
      )
    ])
    error_message = "must be one of: \"JSON_TEXT\""
  }
  validation {
    condition = alltrue([
      for k, v in var.dataintegration_workspace_tasks : (
        v.cancel_rest_call_config == null || (v.cancel_rest_call_config.method_type == null || (contains(["POST", "PUT", "DELETE", "PATCH"], v.cancel_rest_call_config.method_type)))
      )
    ])
    error_message = "must be one of: \"POST\", \"PUT\", \"DELETE\", \"PATCH\""
  }
  validation {
    condition = alltrue([
      for k, v in var.dataintegration_workspace_tasks : (
        v.execute_rest_call_config == null || (v.execute_rest_call_config.model_type == null || (contains(["REST_CALL_CONFIG"], v.execute_rest_call_config.model_type)))
      )
    ])
    error_message = "must be one of: \"REST_CALL_CONFIG\""
  }
  validation {
    condition = alltrue([
      for k, v in var.dataintegration_workspace_tasks : (
        v.execute_rest_call_config == null || (v.execute_rest_call_config.config_values == null || (v.execute_rest_call_config.config_values.config_param_values == null || (v.execute_rest_call_config.config_values.config_param_values.request_payload == null || (v.execute_rest_call_config.config_values.config_param_values.request_payload.ref_value == null || (v.execute_rest_call_config.config_values.config_param_values.request_payload.ref_value.model_type == null || (contains(["JSON_TEXT"], v.execute_rest_call_config.config_values.config_param_values.request_payload.ref_value.model_type)))))))
      )
    ])
    error_message = "must be one of: \"JSON_TEXT\""
  }
  validation {
    condition = alltrue([
      for k, v in var.dataintegration_workspace_tasks : (
        v.execute_rest_call_config == null || (v.execute_rest_call_config.method_type == null || (contains(["GET", "POST", "PUT", "DELETE", "PATCH"], v.execute_rest_call_config.method_type)))
      )
    ])
    error_message = "must be one of: \"GET\", \"POST\", \"PUT\", \"DELETE\", \"PATCH\""
  }
  validation {
    condition = alltrue([
      for k, v in var.dataintegration_workspace_tasks : (
        v.parameters == null || alltrue([for item in v.parameters : (contains(["PARAMETER"], item.model_type))])
      )
    ])
    error_message = "must be one of: \"PARAMETER\""
  }
  validation {
    condition = alltrue([
      for k, v in var.dataintegration_workspace_tasks : (
        v.poll_rest_call_config == null || (v.poll_rest_call_config.model_type == null || (contains(["POLL_REST_CALL_CONFIG"], v.poll_rest_call_config.model_type)))
      )
    ])
    error_message = "must be one of: \"POLL_REST_CALL_CONFIG\""
  }
  validation {
    condition = alltrue([
      for k, v in var.dataintegration_workspace_tasks : (
        v.poll_rest_call_config == null || (v.poll_rest_call_config.config_values == null || (v.poll_rest_call_config.config_values.config_param_values == null || (v.poll_rest_call_config.config_values.config_param_values.request_payload == null || (v.poll_rest_call_config.config_values.config_param_values.request_payload.ref_value == null || (v.poll_rest_call_config.config_values.config_param_values.request_payload.ref_value.model_type == null || (contains(["JSON_TEXT"], v.poll_rest_call_config.config_values.config_param_values.request_payload.ref_value.model_type)))))))
      )
    ])
    error_message = "must be one of: \"JSON_TEXT\""
  }
  validation {
    condition = alltrue([
      for k, v in var.dataintegration_workspace_tasks : (
        v.poll_rest_call_config == null || (v.poll_rest_call_config.config_values == null || (v.poll_rest_call_config.config_values.config_param_values == null || (v.poll_rest_call_config.config_values.config_param_values.poll_max_duration_unit == null || (v.poll_rest_call_config.config_values.config_param_values.poll_max_duration_unit.string_value == null || (contains(["SECONDS", "MINUTES", "HOURS", "DAYS"], v.poll_rest_call_config.config_values.config_param_values.poll_max_duration_unit.string_value))))))
      )
    ])
    error_message = "must be one of: \"SECONDS\", \"MINUTES\", \"HOURS\", \"DAYS\""
  }
  validation {
    condition = alltrue([
      for k, v in var.dataintegration_workspace_tasks : (
        v.poll_rest_call_config == null || (v.poll_rest_call_config.config_values == null || (v.poll_rest_call_config.config_values.config_param_values == null || (v.poll_rest_call_config.config_values.config_param_values.poll_interval_unit == null || (v.poll_rest_call_config.config_values.config_param_values.poll_interval_unit.string_value == null || (contains(["SECONDS", "MINUTES", "HOURS", "DAYS"], v.poll_rest_call_config.config_values.config_param_values.poll_interval_unit.string_value))))))
      )
    ])
    error_message = "must be one of: \"SECONDS\", \"MINUTES\", \"HOURS\", \"DAYS\""
  }
  validation {
    condition = alltrue([
      for k, v in var.dataintegration_workspace_tasks : (
        v.poll_rest_call_config == null || (v.poll_rest_call_config.config_values == null || (v.poll_rest_call_config.config_values.config_param_values == null || (v.poll_rest_call_config.config_values.config_param_values.poll_condition == null || (v.poll_rest_call_config.config_values.config_param_values.poll_condition.ref_value == null || (v.poll_rest_call_config.config_values.config_param_values.poll_condition.ref_value.model_type == null || (contains(["EXPRESSION"], v.poll_rest_call_config.config_values.config_param_values.poll_condition.ref_value.model_type)))))))
      )
    ])
    error_message = "must be one of: \"EXPRESSION\""
  }
  validation {
    condition = alltrue([
      for k, v in var.dataintegration_workspace_tasks : (
        v.poll_rest_call_config == null || (v.poll_rest_call_config.method_type == null || (contains(["GET", "POST", "PUT"], v.poll_rest_call_config.method_type)))
      )
    ])
    error_message = "must be one of: \"GET\", \"POST\", \"PUT\""
  }
  validation {
    condition = alltrue([
      for k, v in var.dataintegration_workspace_tasks : (
        v.typed_expressions == null || alltrue([for item in v.typed_expressions : (item.model_type == null || (contains(["TYPED_EXPRESSION"], item.model_type)))])
      )
    ])
    error_message = "must be one of: \"TYPED_EXPRESSION\""
  }
}

