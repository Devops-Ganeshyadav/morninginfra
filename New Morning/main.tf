resource "azurerm_resource_group" "morning_rg" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_resource_group" "evng_rg" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_storage_account" "morning_storage" {
    depends_on = [ azurerm_resource_group.morning_rg ]
  name                     = "morningstorageacct123"
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = "Premium"
  account_replication_type = "ZRS"

}
 