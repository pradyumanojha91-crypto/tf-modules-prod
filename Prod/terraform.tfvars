Newrg = {
  rg1 = {
    name     = "ojharg"
    location = "centralindia"
  }

  rg2 = {
    name     = "ojharg1"
    location = "centralindia"
  }
   rg3 = {
    name     = "ojharg3"
    location = "centralindia"
  }
}


Vnet = {
  vnet1 = {
    name                = "ojhavnet1"
    location            = "centralindia"
    resource_group_name = "ojharg"
    address_space       = ["10.0.0.0/16"]
  }
}
subnet1 = {
  subnet = {
    name                 = "subnetojha"
    resource_group_name  = "ojharg"
    virtual_network_name = "ojhavnet1"
    address_prefixes     = ["10.2.0.0/24"]
  }

}
publicip1 = {
  publicnew = {
    name                = "pip1"
    resource_group_name = "ojharg"
    location            = "centralindia"
    allocation_method   = "Static"

  }
}

nic = {
  nic1 = {

    name                 = "ojhanic"
    location             = "centralindia"
    resource_group_name  = "ojharg"
    virtual_network_name = "ojhavnet1"
    subnet_name          = "ojhasubnet1"
    pip_name             = "ojhapublicip"

  }
}

vm1 = {
  vmnew = {

    name                            = "ojhavm1"
    resource_group_name             = "ojharg"
    location                        = "centralindia"
    size                            = "Standard_B2s"
    admin_username                  = "adminuser"
    admin_password                  = "new@12345"
    disable_password_authentication = "false"
    nic_name                        = "ojhanic"
  }
}


