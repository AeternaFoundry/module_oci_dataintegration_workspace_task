resource "oci_dataintegration_workspace_task" "dataintegration_workspace_tasks" {
  for_each = var.dataintegration_workspace_tasks

  identifier          = each.value.identifier
  model_type          = each.value.model_type
  name                = each.value.name
  workspace_id        = each.value.workspace_id
  api_call_mode       = each.value.api_call_mode
  description         = each.value.description
  is_single_load      = each.value.is_single_load
  key                 = each.value.key
  model_version       = each.value.model_version
  object_status       = each.value.object_status
  operation           = each.value.operation
  parallel_load_limit = each.value.parallel_load_limit

  registry_metadata {
    aggregator_key   = each.value.registry_metadata.aggregator_key
    is_favorite      = each.value.registry_metadata.is_favorite
    key              = each.value.registry_metadata.key
    labels           = each.value.registry_metadata.labels
    registry_version = each.value.registry_metadata.registry_version
  }

  dynamic "auth_config" {
    for_each = each.value.auth_config != null ? [each.value.auth_config] : []
    content {
      key           = auth_config.value.key
      model_type    = auth_config.value.model_type
      model_version = auth_config.value.model_version
      dynamic "parent_ref" {
        for_each = auth_config.value.parent_ref != null ? [auth_config.value.parent_ref] : []
        content {
          parent      = parent_ref.value.parent
          root_doc_id = parent_ref.value.root_doc_id
        }
      }
      resource_principal_source = auth_config.value.resource_principal_source
    }
  }

  dynamic "cancel_rest_call_config" {
    for_each = each.value.cancel_rest_call_config != null ? [each.value.cancel_rest_call_config] : []
    content {
      dynamic "config_values" {
        for_each = cancel_rest_call_config.value.config_values != null ? [cancel_rest_call_config.value.config_values] : []
        content {
          dynamic "config_param_values" {
            for_each = config_values.value.config_param_values != null ? [config_values.value.config_param_values] : []
            content {
              dynamic "request_payload" {
                for_each = config_param_values.value.request_payload != null ? [config_param_values.value.request_payload] : []
                content {
                  parameter_value = request_payload.value.parameter_value
                  dynamic "ref_value" {
                    for_each = request_payload.value.ref_value != null ? [request_payload.value.ref_value] : []
                    content {
                      dynamic "config_values" {
                        for_each = ref_value.value.config_values != null ? [ref_value.value.config_values] : []
                        content {
                          dynamic "config_param_values" {
                            for_each = config_values.value.config_param_values != null ? [config_values.value.config_param_values] : []
                            content {
                              dynamic "data_param" {
                                for_each = config_param_values.value.data_param != null ? [config_param_values.value.data_param] : []
                                content {
                                  string_value = data_param.value.string_value
                                }
                              }
                            }
                          }
                        }
                      }
                      key        = ref_value.value.key
                      model_type = ref_value.value.model_type
                    }
                  }
                }
              }
              dynamic "request_url" {
                for_each = config_param_values.value.request_url != null ? [config_param_values.value.request_url] : []
                content {
                  string_value = request_url.value.string_value
                }
              }
            }
          }
          dynamic "parent_ref" {
            for_each = config_values.value.parent_ref != null ? [config_values.value.parent_ref] : []
            content {
              parent      = parent_ref.value.parent
              root_doc_id = parent_ref.value.root_doc_id
            }
          }
        }
      }
      key             = cancel_rest_call_config.value.key
      method_type     = cancel_rest_call_config.value.method_type
      model_type      = cancel_rest_call_config.value.model_type
      request_headers = cancel_rest_call_config.value.request_headers
    }
  }

  dynamic "config_provider_delegate" {
    for_each = each.value.config_provider_delegate != null ? [each.value.config_provider_delegate] : []
    content {
      dynamic "bindings" {
        for_each = config_provider_delegate.value.bindings != null ? config_provider_delegate.value.bindings : []
        content {
          key = bindings.value.key
          dynamic "parameter_values" {
            for_each = bindings.value.parameter_values != null ? [bindings.value.parameter_values] : []
            content {
              dynamic "root_object_value" {
                for_each = parameter_values.value.root_object_value != null ? [parameter_values.value.root_object_value] : []
                content {
                  key           = root_object_value.value.key
                  model_type    = root_object_value.value.model_type
                  model_version = root_object_value.value.model_version
                  object_status = root_object_value.value.object_status
                }
              }
              simple_value = parameter_values.value.simple_value
            }
          }
        }
      }
    }
  }

  dynamic "execute_rest_call_config" {
    for_each = each.value.execute_rest_call_config != null ? [each.value.execute_rest_call_config] : []
    content {
      dynamic "config_values" {
        for_each = execute_rest_call_config.value.config_values != null ? [execute_rest_call_config.value.config_values] : []
        content {
          dynamic "config_param_values" {
            for_each = config_values.value.config_param_values != null ? [config_values.value.config_param_values] : []
            content {
              dynamic "request_payload" {
                for_each = config_param_values.value.request_payload != null ? [config_param_values.value.request_payload] : []
                content {
                  parameter_value = request_payload.value.parameter_value
                  dynamic "ref_value" {
                    for_each = request_payload.value.ref_value != null ? [request_payload.value.ref_value] : []
                    content {
                      dynamic "config_values" {
                        for_each = ref_value.value.config_values != null ? [ref_value.value.config_values] : []
                        content {
                          dynamic "config_param_values" {
                            for_each = config_values.value.config_param_values != null ? [config_values.value.config_param_values] : []
                            content {
                              dynamic "data_param" {
                                for_each = config_param_values.value.data_param != null ? [config_param_values.value.data_param] : []
                                content {
                                  string_value = data_param.value.string_value
                                }
                              }
                            }
                          }
                        }
                      }
                      key        = ref_value.value.key
                      model_type = ref_value.value.model_type
                    }
                  }
                }
              }
              dynamic "request_url" {
                for_each = config_param_values.value.request_url != null ? [config_param_values.value.request_url] : []
                content {
                  string_value = request_url.value.string_value
                }
              }
            }
          }
          dynamic "parent_ref" {
            for_each = config_values.value.parent_ref != null ? [config_values.value.parent_ref] : []
            content {
              parent      = parent_ref.value.parent
              root_doc_id = parent_ref.value.root_doc_id
            }
          }
        }
      }
      key             = execute_rest_call_config.value.key
      method_type     = execute_rest_call_config.value.method_type
      model_type      = execute_rest_call_config.value.model_type
      request_headers = execute_rest_call_config.value.request_headers
    }
  }

  dynamic "input_ports" {
    for_each = each.value.input_ports != null ? each.value.input_ports : []
    content {
      dynamic "config_values" {
        for_each = input_ports.value.config_values != null ? [input_ports.value.config_values] : []
        content {
          dynamic "config_param_values" {
            for_each = config_values.value.config_param_values != null ? [config_values.value.config_param_values] : []
            content {
              int_value         = config_param_values.value.int_value
              object_value      = config_param_values.value.object_value
              parameter_value   = config_param_values.value.parameter_value
              ref_value         = config_param_values.value.ref_value
              root_object_value = config_param_values.value.root_object_value
              string_value      = config_param_values.value.string_value
            }
          }
          dynamic "parent_ref" {
            for_each = config_values.value.parent_ref != null ? [config_values.value.parent_ref] : []
            content {
              parent      = parent_ref.value.parent
              root_doc_id = parent_ref.value.root_doc_id
            }
          }
        }
      }
      description   = input_ports.value.description
      fields        = input_ports.value.fields
      key           = input_ports.value.key
      model_type    = input_ports.value.model_type
      model_version = input_ports.value.model_version
      name          = input_ports.value.name
      object_status = input_ports.value.object_status
      dynamic "parent_ref" {
        for_each = input_ports.value.parent_ref != null ? [input_ports.value.parent_ref] : []
        content {
          parent      = parent_ref.value.parent
          root_doc_id = parent_ref.value.root_doc_id
        }
      }
      port_type = input_ports.value.port_type
    }
  }

  dynamic "op_config_values" {
    for_each = each.value.op_config_values != null ? [each.value.op_config_values] : []
    content {
      dynamic "config_param_values" {
        for_each = op_config_values.value.config_param_values != null ? [op_config_values.value.config_param_values] : []
        content {
          dynamic "config_param_value" {
            for_each = config_param_values.value.config_param_value != null ? [config_param_values.value.config_param_value] : []
            content {
              int_value       = config_param_value.value.int_value
              object_value    = config_param_value.value.object_value
              parameter_value = config_param_value.value.parameter_value
              dynamic "ref_value" {
                for_each = config_param_value.value.ref_value != null ? [config_param_value.value.ref_value] : []
                content {
                  key           = ref_value.value.key
                  model_type    = ref_value.value.model_type
                  model_version = ref_value.value.model_version
                  name          = ref_value.value.name
                  object_status = ref_value.value.object_status
                }
              }
              dynamic "root_object_value" {
                for_each = config_param_value.value.root_object_value != null ? [config_param_value.value.root_object_value] : []
                content {
                  key           = root_object_value.value.key
                  model_type    = root_object_value.value.model_type
                  model_version = root_object_value.value.model_version
                  object_status = root_object_value.value.object_status
                }
              }
              string_value = config_param_value.value.string_value
            }
          }
          key = config_param_values.value.key
        }
      }
      dynamic "parent_ref" {
        for_each = op_config_values.value.parent_ref != null ? [op_config_values.value.parent_ref] : []
        content {
          parent      = parent_ref.value.parent
          root_doc_id = parent_ref.value.root_doc_id
        }
      }
    }
  }

  dynamic "output_ports" {
    for_each = each.value.output_ports != null ? each.value.output_ports : []
    content {
      dynamic "config_values" {
        for_each = output_ports.value.config_values != null ? [output_ports.value.config_values] : []
        content {
          dynamic "config_param_values" {
            for_each = config_values.value.config_param_values != null ? [config_values.value.config_param_values] : []
            content {
              int_value         = config_param_values.value.int_value
              object_value      = config_param_values.value.object_value
              parameter_value   = config_param_values.value.parameter_value
              ref_value         = config_param_values.value.ref_value
              root_object_value = config_param_values.value.root_object_value
              string_value      = config_param_values.value.string_value
            }
          }
          dynamic "parent_ref" {
            for_each = config_values.value.parent_ref != null ? [config_values.value.parent_ref] : []
            content {
              parent      = parent_ref.value.parent
              root_doc_id = parent_ref.value.root_doc_id
            }
          }
        }
      }
      description   = output_ports.value.description
      fields        = output_ports.value.fields
      key           = output_ports.value.key
      model_type    = output_ports.value.model_type
      model_version = output_ports.value.model_version
      name          = output_ports.value.name
      object_status = output_ports.value.object_status
      dynamic "parent_ref" {
        for_each = output_ports.value.parent_ref != null ? [output_ports.value.parent_ref] : []
        content {
          parent      = parent_ref.value.parent
          root_doc_id = parent_ref.value.root_doc_id
        }
      }
      port_type = output_ports.value.port_type
    }
  }

  dynamic "parameters" {
    for_each = each.value.parameters != null ? each.value.parameters : []
    content {
      dynamic "config_values" {
        for_each = parameters.value.config_values != null ? [parameters.value.config_values] : []
        content {
          dynamic "config_param_values" {
            for_each = config_values.value.config_param_values != null ? [config_values.value.config_param_values] : []
            content {
              dynamic "config_param_value" {
                for_each = config_param_values.value.config_param_value != null ? [config_param_values.value.config_param_value] : []
                content {
                  int_value       = config_param_value.value.int_value
                  object_value    = config_param_value.value.object_value
                  parameter_value = config_param_value.value.parameter_value
                  dynamic "ref_value" {
                    for_each = config_param_value.value.ref_value != null ? [config_param_value.value.ref_value] : []
                    content {
                      key           = ref_value.value.key
                      model_type    = ref_value.value.model_type
                      model_version = ref_value.value.model_version
                      name          = ref_value.value.name
                      object_status = ref_value.value.object_status
                    }
                  }
                  dynamic "root_object_value" {
                    for_each = config_param_value.value.root_object_value != null ? [config_param_value.value.root_object_value] : []
                    content {
                      key           = root_object_value.value.key
                      model_type    = root_object_value.value.model_type
                      model_version = root_object_value.value.model_version
                      object_status = root_object_value.value.object_status
                    }
                  }
                  string_value = config_param_value.value.string_value
                }
              }
              key = config_param_values.value.key
            }
          }
          dynamic "parent_ref" {
            for_each = config_values.value.parent_ref != null ? [config_values.value.parent_ref] : []
            content {
              parent      = parent_ref.value.parent
              root_doc_id = parent_ref.value.root_doc_id
            }
          }
        }
      }
      default_value           = parameters.value.default_value
      description             = parameters.value.description
      is_input                = parameters.value.is_input
      is_output               = parameters.value.is_output
      key                     = parameters.value.key
      model_type              = parameters.value.model_type
      model_version           = parameters.value.model_version
      name                    = parameters.value.name
      object_status           = parameters.value.object_status
      output_aggregation_type = parameters.value.output_aggregation_type
      dynamic "parent_ref" {
        for_each = parameters.value.parent_ref != null ? [parameters.value.parent_ref] : []
        content {
          parent      = parent_ref.value.parent
          root_doc_id = parent_ref.value.root_doc_id
        }
      }
      root_object_default_value = parameters.value.root_object_default_value
      type                      = parameters.value.type
      type_name                 = parameters.value.type_name
      used_for                  = parameters.value.used_for
    }
  }

  dynamic "parent_ref" {
    for_each = each.value.parent_ref != null ? [each.value.parent_ref] : []
    content {
      parent      = parent_ref.value.parent
      root_doc_id = parent_ref.value.root_doc_id
    }
  }

  dynamic "poll_rest_call_config" {
    for_each = each.value.poll_rest_call_config != null ? [each.value.poll_rest_call_config] : []
    content {
      dynamic "config_values" {
        for_each = poll_rest_call_config.value.config_values != null ? [poll_rest_call_config.value.config_values] : []
        content {
          dynamic "config_param_values" {
            for_each = config_values.value.config_param_values != null ? [config_values.value.config_param_values] : []
            content {
              dynamic "poll_condition" {
                for_each = config_param_values.value.poll_condition != null ? [config_param_values.value.poll_condition] : []
                content {
                  parameter_value = poll_condition.value.parameter_value
                  dynamic "ref_value" {
                    for_each = poll_condition.value.ref_value != null ? [poll_condition.value.ref_value] : []
                    content {
                      expr_string = ref_value.value.expr_string
                      key         = ref_value.value.key
                      model_type  = ref_value.value.model_type
                      name        = ref_value.value.name
                    }
                  }
                }
              }
              dynamic "poll_interval" {
                for_each = config_param_values.value.poll_interval != null ? [config_param_values.value.poll_interval] : []
                content {
                  object_value = poll_interval.value.object_value
                }
              }
              dynamic "poll_interval_unit" {
                for_each = config_param_values.value.poll_interval_unit != null ? [config_param_values.value.poll_interval_unit] : []
                content {
                  string_value = poll_interval_unit.value.string_value
                }
              }
              dynamic "poll_max_duration" {
                for_each = config_param_values.value.poll_max_duration != null ? [config_param_values.value.poll_max_duration] : []
                content {
                  object_value = poll_max_duration.value.object_value
                }
              }
              dynamic "poll_max_duration_unit" {
                for_each = config_param_values.value.poll_max_duration_unit != null ? [config_param_values.value.poll_max_duration_unit] : []
                content {
                  string_value = poll_max_duration_unit.value.string_value
                }
              }
              dynamic "request_payload" {
                for_each = config_param_values.value.request_payload != null ? [config_param_values.value.request_payload] : []
                content {
                  parameter_value = request_payload.value.parameter_value
                  dynamic "ref_value" {
                    for_each = request_payload.value.ref_value != null ? [request_payload.value.ref_value] : []
                    content {
                      dynamic "config_values" {
                        for_each = ref_value.value.config_values != null ? [ref_value.value.config_values] : []
                        content {
                          dynamic "config_param_values" {
                            for_each = config_values.value.config_param_values != null ? [config_values.value.config_param_values] : []
                            content {
                              dynamic "data_param" {
                                for_each = config_param_values.value.data_param != null ? [config_param_values.value.data_param] : []
                                content {
                                  string_value = data_param.value.string_value
                                }
                              }
                            }
                          }
                        }
                      }
                      key        = ref_value.value.key
                      model_type = ref_value.value.model_type
                      name       = ref_value.value.name
                    }
                  }
                }
              }
              dynamic "request_url" {
                for_each = config_param_values.value.request_url != null ? [config_param_values.value.request_url] : []
                content {
                  string_value = request_url.value.string_value
                }
              }
            }
          }
          dynamic "parent_ref" {
            for_each = config_values.value.parent_ref != null ? [config_values.value.parent_ref] : []
            content {
              parent      = parent_ref.value.parent
              root_doc_id = parent_ref.value.root_doc_id
            }
          }
        }
      }
      key             = poll_rest_call_config.value.key
      method_type     = poll_rest_call_config.value.method_type
      model_type      = poll_rest_call_config.value.model_type
      request_headers = poll_rest_call_config.value.request_headers
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

  dynamic "typed_expressions" {
    for_each = each.value.typed_expressions != null ? each.value.typed_expressions : []
    content {
      dynamic "config_values" {
        for_each = typed_expressions.value.config_values != null ? [typed_expressions.value.config_values] : []
        content {
          dynamic "config_param_values" {
            for_each = config_values.value.config_param_values != null ? [config_values.value.config_param_values] : []
            content {
              dynamic "length" {
                for_each = config_param_values.value.length != null ? [config_param_values.value.length] : []
                content {
                  int_value = length.value.int_value
                }
              }
              dynamic "scale" {
                for_each = config_param_values.value.scale != null ? [config_param_values.value.scale] : []
                content {
                  int_value = scale.value.int_value
                }
              }
            }
          }
          dynamic "parent_ref" {
            for_each = config_values.value.parent_ref != null ? [config_values.value.parent_ref] : []
            content {
              parent      = parent_ref.value.parent
              root_doc_id = parent_ref.value.root_doc_id
            }
          }
        }
      }
      description   = typed_expressions.value.description
      expression    = typed_expressions.value.expression
      key           = typed_expressions.value.key
      model_type    = typed_expressions.value.model_type
      model_version = typed_expressions.value.model_version
      name          = typed_expressions.value.name
      object_status = typed_expressions.value.object_status
      dynamic "parent_ref" {
        for_each = typed_expressions.value.parent_ref != null ? [typed_expressions.value.parent_ref] : []
        content {
          parent      = parent_ref.value.parent
          root_doc_id = parent_ref.value.root_doc_id
        }
      }
      type = typed_expressions.value.type
    }
  }
}

