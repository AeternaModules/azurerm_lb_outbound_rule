output "lb_outbound_rules" {
  description = "All lb_outbound_rule resources"
  value       = azurerm_lb_outbound_rule.lb_outbound_rules
}
output "lb_outbound_rules_allocated_outbound_ports" {
  description = "List of allocated_outbound_ports values across all lb_outbound_rules"
  value       = [for k, v in azurerm_lb_outbound_rule.lb_outbound_rules : v.allocated_outbound_ports]
}
output "lb_outbound_rules_backend_address_pool_id" {
  description = "List of backend_address_pool_id values across all lb_outbound_rules"
  value       = [for k, v in azurerm_lb_outbound_rule.lb_outbound_rules : v.backend_address_pool_id]
}
output "lb_outbound_rules_enable_tcp_reset" {
  description = "List of enable_tcp_reset values across all lb_outbound_rules"
  value       = [for k, v in azurerm_lb_outbound_rule.lb_outbound_rules : v.enable_tcp_reset]
}
output "lb_outbound_rules_frontend_ip_configuration" {
  description = "List of frontend_ip_configuration values across all lb_outbound_rules"
  value       = [for k, v in azurerm_lb_outbound_rule.lb_outbound_rules : v.frontend_ip_configuration]
}
output "lb_outbound_rules_idle_timeout_in_minutes" {
  description = "List of idle_timeout_in_minutes values across all lb_outbound_rules"
  value       = [for k, v in azurerm_lb_outbound_rule.lb_outbound_rules : v.idle_timeout_in_minutes]
}
output "lb_outbound_rules_loadbalancer_id" {
  description = "List of loadbalancer_id values across all lb_outbound_rules"
  value       = [for k, v in azurerm_lb_outbound_rule.lb_outbound_rules : v.loadbalancer_id]
}
output "lb_outbound_rules_name" {
  description = "List of name values across all lb_outbound_rules"
  value       = [for k, v in azurerm_lb_outbound_rule.lb_outbound_rules : v.name]
}
output "lb_outbound_rules_protocol" {
  description = "List of protocol values across all lb_outbound_rules"
  value       = [for k, v in azurerm_lb_outbound_rule.lb_outbound_rules : v.protocol]
}
output "lb_outbound_rules_tcp_reset_enabled" {
  description = "List of tcp_reset_enabled values across all lb_outbound_rules"
  value       = [for k, v in azurerm_lb_outbound_rule.lb_outbound_rules : v.tcp_reset_enabled]
}

