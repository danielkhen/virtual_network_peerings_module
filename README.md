<!-- BEGIN_TF_DOCS -->

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_allow_forwarded_traffic"></a> [allow\_forwarded\_traffic](#input\_allow\_forwarded\_traffic) | (Optional) Allow forwarded traffic through an nva. | `bool` | `false` | no |
| <a name="input_remote_resource_group_name"></a> [remote\_resource\_group\_name](#input\_remote\_resource\_group\_name) | The remote resource group name for the peerings | `string` | n/a | yes |
| <a name="input_remote_vnet_id"></a> [remote\_vnet\_id](#input\_remote\_vnet\_id) | The id of the remote vnet | `string` | n/a | yes |
| <a name="input_remote_vnet_name"></a> [remote\_vnet\_name](#input\_remote\_vnet\_name) | The name of the remote vnet | `string` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The local resource group name for the peerings | `string` | n/a | yes |
| <a name="input_use_local_gateway"></a> [use\_local\_gateway](#input\_use\_local\_gateway) | (Required) Use the local virtual network gateway for the peering. | `bool` | n/a | yes |
| <a name="input_vnet_id"></a> [vnet\_id](#input\_vnet\_id) | The id of the local vnet with the gateway | `string` | n/a | yes |
| <a name="input_vnet_name"></a> [vnet\_name](#input\_vnet\_name) | The name of the local vnet with the gateway | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_ingoing_id"></a> [ingoing\_id](#output\_ingoing\_id) | The id of the peering from the remote to the local virtual network. |
| <a name="output_ingoing_name"></a> [ingoing\_name](#output\_ingoing\_name) | The name of the peering from the remote to the local virtual network. |
| <a name="output_ingoing_object"></a> [ingoing\_object](#output\_ingoing\_object) | The peering from the remote to the local virtual network object. |
| <a name="output_outgoing_id"></a> [outgoing\_id](#output\_outgoing\_id) | The id of the peering from the local to the remote virtual network. |
| <a name="output_outgoing_name"></a> [outgoing\_name](#output\_outgoing\_name) | The name of the peering from the local to the remote virtual network. |
| <a name="output_outgoing_object"></a> [outgoing\_object](#output\_outgoing\_object) | The peering from the local to the remote virtual network object. |

## Resources

| Name | Type |
|------|------|
| [azurerm_virtual_network_peering.ingoing_peering](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network_peering) | resource |
| [azurerm_virtual_network_peering.outgoing_peering](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network_peering) | resource |

## Modules

No modules.
<!-- END_TF_DOCS -->