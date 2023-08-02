variable "first_resource_group_name" {
  description = "(Required) The name of the first resource group."
  type        = string
}

variable "second_resource_group_name" {
  description = "(Required) The name of the second resource group."
  type        = string
}

variable "first_vnet_name" {
  description = "(Required) The name of the first virtual network."
  type        = string
}

variable "second_vnet_name" {
  description = "(Required) The name of the second virtual network."
  type        = string
}

variable "first_vnet_id" {
  description = "(Required) The id of the first virtual network."
  type        = string
}

variable "second_vnet_id" {
  description = "(Required) The id of the second virtual network."
  type        = string
}

variable "first_forwarded_traffic" {
  description = "(Optional) Allow forwarded traffic to the first virtual network."
  type        = bool
  default     = false
}

variable "second_forwarded_traffic" {
  description = "(Optional) Allow forwarded traffic to the second virtual network."
  type        = bool
  default     = false
}


variable "first_gateway_transit" {
  description = "(Optional) Allow gateway transit on the first virtual network."
  type        = bool
  default     = false
}

variable "second_gateway_transit" {
  description = "(Optional) Allow gateway transit on the second virtual network."
  type        = bool
  default     = false
}

variable "first_remote_gateway" {
  description = "(Optional) Allow remote gateway on the first virtual network."
  type        = bool
  default     = false
}

variable "second_remote_gateway" {
  description = "(Optional) Allow remote gateway on the second virtual network."
  type        = bool
  default     = false
}