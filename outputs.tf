output "outgoing_name" {
  description = "The name of the peering from the first to the second virtual network."
  value       = azurerm_virtual_network_peering.first_to_second.name
}

output "outgoing_id" {
  description = "The id of the peering from the first to the second virtual network."
  value       = azurerm_virtual_network_peering.first_to_second.id
}

output "outgoing_object" {
  description = "The peering from the first to the second virtual network object."
  value       = azurerm_virtual_network_peering.first_to_second
}

output "ingoing_name" {
  description = "The name of the peering from the second to the first virtual network."
  value       = azurerm_virtual_network_peering.second_to_first.name
}

output "ingoing_id" {
  description = "The id of the peering from the second to the first virtual network."
  value       = azurerm_virtual_network_peering.second_to_first.id
}

output "ingoing_object" {
  description = "The peering from the second to the first virtual network object."
  value       = azurerm_virtual_network_peering.second_to_first
}