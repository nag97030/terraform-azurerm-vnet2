data "azurerm_resource_group" "rg" {
  name = "tfrg"
}

resource "azurerm_virtual_network" "rg" {
  name                = var.vnet
  location            = data.azurerm_resource_group.rg.location
  resource_group_name = data.azurerm_resource_group.rg.name
  address_space       = ["10.0.0.0/16"]

  subnet {
    name           = var.s1
    address_prefix = "10.0.1.0/24"
  }

  subnet {
    name           = var.s2
    address_prefix = "10.0.2.0/24"
  }

  subnet {
    name           = var.s3
    address_prefix = "10.0.3.0/24"
  }
}