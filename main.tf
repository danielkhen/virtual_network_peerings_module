locals {
  first_to_second_peering_name = "${var.first_vnet_name}-to-${var.second_vnet_name}"
  second_to_first_peering_name = "${var.second_vnet_name}-to-${var.first_vnet_name}"
}

resource "azurerm_virtual_network_peering" "first_to_second" {
  name                      = local.first_to_second_peering_name
  resource_group_name       = var.first_resource_group_name
  virtual_network_name      = var.first_vnet_name
  remote_virtual_network_id = var.second_vnet_id

  allow_forwarded_traffic = var.first_forwarded_traffic
  allow_gateway_transit   = var.first_gateway_transit
  use_remote_gateways     = var.first_remote_gateway
}

resource "azurerm_virtual_network_peering" "second_to_first" {
  name                      = local.second_to_first_peering_name
  resource_group_name       = var.second_resource_group_name
  virtual_network_name      = var.second_vnet_name
  remote_virtual_network_id = var.first_vnet_id

  allow_forwarded_traffic = var.second_forwarded_traffic
  allow_gateway_transit   = var.second_gateway_transit
  use_remote_gateways     = var.second_remote_gateway
}