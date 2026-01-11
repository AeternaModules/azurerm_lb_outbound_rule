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
    allocated_outbound_ports = optional(number, 1024)
    enable_tcp_reset         = optional(bool)
    idle_timeout_in_minutes  = optional(number, 4)
    tcp_reset_enabled        = optional(bool)
    frontend_ip_configuration = optional(object({
      name = string
    }))
  }))
}

