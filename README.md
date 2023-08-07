<!-- BEGIN_TF_DOCS -->

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_first_forwarded_traffic"></a> [first\_forwarded\_traffic](#input\_first\_forwarded\_traffic) | (Optional) Allow forwarded traffic to the first virtual network. | `bool` | `false` | no |
| <a name="input_first_gateway_transit"></a> [first\_gateway\_transit](#input\_first\_gateway\_transit) | (Optional) Allow gateway transit on the first virtual network. | `bool` | `false` | no |
| <a name="input_first_remote_gateway"></a> [first\_remote\_gateway](#input\_first\_remote\_gateway) | (Optional) Allow remote gateway on the first virtual network. | `bool` | `false` | no |
| <a name="input_first_resource_group_name"></a> [first\_resource\_group\_name](#input\_first\_resource\_group\_name) | (Required) The name of the first resource group. | `string` | n/a | yes |
| <a name="input_first_vnet_id"></a> [first\_vnet\_id](#input\_first\_vnet\_id) | (Required) The id of the first virtual network. | `string` | n/a | yes |
| <a name="input_first_vnet_name"></a> [first\_vnet\_name](#input\_first\_vnet\_name) | (Required) The name of the first virtual network. | `string` | n/a | yes |
| <a name="input_second_forwarded_traffic"></a> [second\_forwarded\_traffic](#input\_second\_forwarded\_traffic) | (Optional) Allow forwarded traffic to the second virtual network. | `bool` | `false` | no |
| <a name="input_second_gateway_transit"></a> [second\_gateway\_transit](#input\_second\_gateway\_transit) | (Optional) Allow gateway transit on the second virtual network. | `bool` | `false` | no |
| <a name="input_second_remote_gateway"></a> [second\_remote\_gateway](#input\_second\_remote\_gateway) | (Optional) Allow remote gateway on the second virtual network. | `bool` | `false` | no |
| <a name="input_second_resource_group_name"></a> [second\_resource\_group\_name](#input\_second\_resource\_group\_name) | (Required) The name of the second resource group. | `string` | n/a | yes |
| <a name="input_second_vnet_id"></a> [second\_vnet\_id](#input\_second\_vnet\_id) | (Required) The id of the second virtual network. | `string` | n/a | yes |
| <a name="input_second_vnet_name"></a> [second\_vnet\_name](#input\_second\_vnet\_name) | (Required) The name of the second virtual network. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_ingoing_id"></a> [ingoing\_id](#output\_ingoing\_id) | The id of the peering from the second to the first virtual network. |
| <a name="output_ingoing_name"></a> [ingoing\_name](#output\_ingoing\_name) | The name of the peering from the second to the first virtual network. |
| <a name="output_ingoing_object"></a> [ingoing\_object](#output\_ingoing\_object) | The peering from the second to the first virtual network object. |
| <a name="output_outgoing_id"></a> [outgoing\_id](#output\_outgoing\_id) | The id of the peering from the first to the second virtual network. |
| <a name="output_outgoing_name"></a> [outgoing\_name](#output\_outgoing\_name) | The name of the peering from the first to the second virtual network. |
| <a name="output_outgoing_object"></a> [outgoing\_object](#output\_outgoing\_object) | The peering from the first to the second virtual network object. |

## Resources

| Name | Type |
|------|------|
| [azurerm_virtual_network_peering.first_to_second](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network_peering) | resource |
| [azurerm_virtual_network_peering.second_to_first](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network_peering) | resource |

## Example Code

```hcl
module "virtual_network_peerings" {
  source = "../"

  vnet_name                  = azurerm_virtual_network.example_local.name
  vnet_id                    = azurerm_virtual_network.example_local.id
  resource_group_name        = azurerm_resource_group.example_local.name
  remote_vnet_name           = azurerm_virtual_network.example_remote.name
  remote_vnet_id             = azurerm_virtual_network.example_remote.id
  remote_resource_group_name = azurerm_resource_group.example_remote.name

  allow_forwarded_traffic = false
  use_local_gateway       = true # Use a gateway in the example local vnet.
}
```
<!-- END_TF_DOCS -->