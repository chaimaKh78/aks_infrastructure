variable "resource_group_name" {
  description = "Resource Group name"
  type        = string
}

variable "location" {
  description = "Location in which to deploy the network"
  type        = string
}

variable "vnet_name" {
  description = "VNET name"
  type        = string
}

variable "address_space" {
  description = "VNET address space"
  type        = list(string)
}
variable "public_ip_name" {
  type        = string
}
variable "network_security_name" {
  type        = string
}
variable "address_prefixes" {
  default = ""
}