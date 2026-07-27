module "Dev-rg" {
  source = "../modules/Azurerm_resource_group"
  Newrg  = var.Newrg

}
module "Dev-virtualnet" {
  source = "../modules/Azurerm_virtual_network"
  Vnet   = var.Vnet
}

module "Dev-subnet" {
  source  = "../modules/Azurerm_Subnet"
  subnet1 = var.subnet1
}
module "pip-new" {
  source    = "../modules/Azurerm_public_ip"
  publicip1 = var.publicip1
}
module "nicnow" {
  source = "../modules/Azurerm_Network_interface"
  nic    = var.nic
}
module "virtulmachin" {
  source = "../modules/Azurerm_virtual_machin"
  vm1    = var.vm1
}