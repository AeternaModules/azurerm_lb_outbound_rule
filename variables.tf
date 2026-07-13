variable "lb_outbound_rules" {
  description = <<EOT
Map of lb_outbound_rules, attributes below
Required:
    - backend_address_pool_id
    - loadbalancer_id
    - name
    - protocol
Optional:
    - allocated_outbound_ports
    - enable_tcp_reset
    - idle_timeout_in_minutes
    - tcp_reset_enabled
    - frontend_ip_configuration (block):
        - name (required)
EOT

  type = map(object({
    backend_address_pool_id  = string
    loadbalancer_id          = string
    name                     = string
    protocol                 = string
    allocated_outbound_ports = optional(number)
    enable_tcp_reset         = optional(bool)
    idle_timeout_in_minutes  = optional(number)
    tcp_reset_enabled        = optional(bool)
    frontend_ip_configuration = optional(list(object({
      name = string
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.lb_outbound_rules : (
        length(v.name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.lb_outbound_rules : (
        v.frontend_ip_configuration == null || alltrue([for item in v.frontend_ip_configuration : (length(item.name) > 0)])
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.lb_outbound_rules : (
        v.allocated_outbound_ports == null || (v.allocated_outbound_ports >= 0)
      )
    ])
    error_message = "must be at least 0"
  }
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

