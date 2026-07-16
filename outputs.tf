output "lb_outbound_rules_id" {
  description = "Map of id values across all lb_outbound_rules, keyed the same as var.lb_outbound_rules"
  value       = { for k, v in azurerm_lb_outbound_rule.lb_outbound_rules : k => v.id if v.id != null && length(v.id) > 0 }
}
output "lb_outbound_rules_allocated_outbound_ports" {
  description = "Map of allocated_outbound_ports values across all lb_outbound_rules, keyed the same as var.lb_outbound_rules"
  value       = { for k, v in azurerm_lb_outbound_rule.lb_outbound_rules : k => v.allocated_outbound_ports if v.allocated_outbound_ports != null }
}
output "lb_outbound_rules_backend_address_pool_id" {
  description = "Map of backend_address_pool_id values across all lb_outbound_rules, keyed the same as var.lb_outbound_rules"
  value       = { for k, v in azurerm_lb_outbound_rule.lb_outbound_rules : k => v.backend_address_pool_id if v.backend_address_pool_id != null && length(v.backend_address_pool_id) > 0 }
}
output "lb_outbound_rules_enable_tcp_reset" {
  description = "Map of enable_tcp_reset values across all lb_outbound_rules, keyed the same as var.lb_outbound_rules"
  value       = { for k, v in azurerm_lb_outbound_rule.lb_outbound_rules : k => v.enable_tcp_reset if v.enable_tcp_reset != null }
}
output "lb_outbound_rules_frontend_ip_configuration" {
  description = "Map of frontend_ip_configuration values across all lb_outbound_rules, keyed the same as var.lb_outbound_rules"
  value       = { for k, v in azurerm_lb_outbound_rule.lb_outbound_rules : k => v.frontend_ip_configuration if v.frontend_ip_configuration != null && length(v.frontend_ip_configuration) > 0 }
}
output "lb_outbound_rules_idle_timeout_in_minutes" {
  description = "Map of idle_timeout_in_minutes values across all lb_outbound_rules, keyed the same as var.lb_outbound_rules"
  value       = { for k, v in azurerm_lb_outbound_rule.lb_outbound_rules : k => v.idle_timeout_in_minutes if v.idle_timeout_in_minutes != null }
}
output "lb_outbound_rules_loadbalancer_id" {
  description = "Map of loadbalancer_id values across all lb_outbound_rules, keyed the same as var.lb_outbound_rules"
  value       = { for k, v in azurerm_lb_outbound_rule.lb_outbound_rules : k => v.loadbalancer_id if v.loadbalancer_id != null && length(v.loadbalancer_id) > 0 }
}
output "lb_outbound_rules_name" {
  description = "Map of name values across all lb_outbound_rules, keyed the same as var.lb_outbound_rules"
  value       = { for k, v in azurerm_lb_outbound_rule.lb_outbound_rules : k => v.name if v.name != null && length(v.name) > 0 }
}
output "lb_outbound_rules_protocol" {
  description = "Map of protocol values across all lb_outbound_rules, keyed the same as var.lb_outbound_rules"
  value       = { for k, v in azurerm_lb_outbound_rule.lb_outbound_rules : k => v.protocol if v.protocol != null && length(v.protocol) > 0 }
}
output "lb_outbound_rules_tcp_reset_enabled" {
  description = "Map of tcp_reset_enabled values across all lb_outbound_rules, keyed the same as var.lb_outbound_rules"
  value       = { for k, v in azurerm_lb_outbound_rule.lb_outbound_rules : k => v.tcp_reset_enabled if v.tcp_reset_enabled != null }
}

