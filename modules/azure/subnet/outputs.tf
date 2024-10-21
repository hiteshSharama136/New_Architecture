output "subnet_id" {
    description = "The subnet ID."
    value = azurerm_subnet.subnet.id
}
output "subnet_name" {
    description = "(Required) The name of the subnet. Changing this forces a new resource to be created."
    value = azurerm_subnet.subnet.name
}