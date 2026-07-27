resource "azurerm_resource_group" "newrg" {
  for_each = var.Newrg
  name     = each.value.name
  location = each.value.location
}

