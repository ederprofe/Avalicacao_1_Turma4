provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg_devops" {
  name     = "rg-devops-equipe"
  location = "Brazil South"
}

resource "azurerm_storage_account" "storage" {
  name                     = "storagedevopsequipe"
  resource_group_name      = azurerm_resource_group.rg_devops.name
  location                 = azurerm_resource_group.rg_devops.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
