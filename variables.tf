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
    allocated_outbound_ports = optional(number) # Default: 1024
    enable_tcp_reset         = optional(bool)
    idle_timeout_in_minutes  = optional(number) # Default: 4
    tcp_reset_enabled        = optional(bool)
    frontend_ip_configuration = optional(list(object({
      name = string
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.lb_outbound_rules : (
        v.frontend_ip_configuration == null || (length(v.frontend_ip_configuration) >= 1)
      )
    ])
    error_message = "Each frontend_ip_configuration list must contain at least 1 items"
  }
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
        v.allocated_outbound_ports == null || (v.allocated_outbound_ports >= 0)
      )
    ])
    error_message = "must be at least 0"
  }
  # --- Unconfirmed validation candidates, derived from azurerm_lb_outbound_rule's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: loadbalancer_id
  #   source:    [from loadbalancers.ValidateLoadBalancerID] !ok
  # path: loadbalancer_id
  #   source:    [from loadbalancers.ValidateLoadBalancerID] err != nil
  # path: frontend_ip_configuration.name
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: protocol
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
}

