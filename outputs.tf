output "lb_outbound_rules_allocated_outbound_ports" {
  description = "Map of allocated_outbound_ports values across all lb_outbound_rules, keyed the same as var.lb_outbound_rules"
  value       = { for k, v in azurerm_lb_outbound_rule.lb_outbound_rules : k => v.allocated_outbound_ports }
}
output "lb_outbound_rules_backend_address_pool_id" {
  description = "Map of backend_address_pool_id values across all lb_outbound_rules, keyed the same as var.lb_outbound_rules"
  value       = { for k, v in azurerm_lb_outbound_rule.lb_outbound_rules : k => v.backend_address_pool_id }
}
output "lb_outbound_rules_enable_tcp_reset" {
  description = "Map of enable_tcp_reset values across all lb_outbound_rules, keyed the same as var.lb_outbound_rules"
  value       = { for k, v in azurerm_lb_outbound_rule.lb_outbound_rules : k => v.enable_tcp_reset }
}
output "lb_outbound_rules_frontend_ip_configuration" {
  description = "Map of frontend_ip_configuration values across all lb_outbound_rules, keyed the same as var.lb_outbound_rules"
  value       = { for k, v in azurerm_lb_outbound_rule.lb_outbound_rules : k => v.frontend_ip_configuration }
}
output "lb_outbound_rules_idle_timeout_in_minutes" {
  description = "Map of idle_timeout_in_minutes values across all lb_outbound_rules, keyed the same as var.lb_outbound_rules"
  value       = { for k, v in azurerm_lb_outbound_rule.lb_outbound_rules : k => v.idle_timeout_in_minutes }
}
output "lb_outbound_rules_loadbalancer_id" {
  description = "Map of loadbalancer_id values across all lb_outbound_rules, keyed the same as var.lb_outbound_rules"
  value       = { for k, v in azurerm_lb_outbound_rule.lb_outbound_rules : k => v.loadbalancer_id }
}
output "lb_outbound_rules_name" {
  description = "Map of name values across all lb_outbound_rules, keyed the same as var.lb_outbound_rules"
  value       = { for k, v in azurerm_lb_outbound_rule.lb_outbound_rules : k => v.name }
}
output "lb_outbound_rules_protocol" {
  description = "Map of protocol values across all lb_outbound_rules, keyed the same as var.lb_outbound_rules"
  value       = { for k, v in azurerm_lb_outbound_rule.lb_outbound_rules : k => v.protocol }
}
output "lb_outbound_rules_tcp_reset_enabled" {
  description = "Map of tcp_reset_enabled values across all lb_outbound_rules, keyed the same as var.lb_outbound_rules"
  value       = { for k, v in azurerm_lb_outbound_rule.lb_outbound_rules : k => v.tcp_reset_enabled }
}

