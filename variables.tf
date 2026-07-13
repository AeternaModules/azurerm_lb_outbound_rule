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
  # --- Unconfirmed validation candidates, derived from azurerm_lb_outbound_rule's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: loadbalancer_id
  #   source:    [from loadbalancers.ValidateLoadBalancerID] !ok
  # path: loadbalancer_id
  #   source:    [from loadbalancers.ValidateLoadBalancerID] err != nil
  # path: frontend_ip_configuration.name
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: protocol
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: allocated_outbound_ports
  #   condition: value >= 0
  #   message:   must be at least 0
}

