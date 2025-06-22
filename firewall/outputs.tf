output subnet_id {
  value = azurerm_subnet.subnet.id
}
output "public_ip" {
  value = azurerm_network_interface.nic.id
}