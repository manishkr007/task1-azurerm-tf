provider "azurerm" {
  tenant_id                       = "59c04b79-d58e-4be9-a95b-05299beb9edd"
  subscription_id                 = "1c51cda3-7da3-45a5-98fe-a028ede055f6"
  resource_provider_registrations = "none"
  features {}
}

# Creating a resource group in the specified location
resource "azurerm_resource_group" "sre-challenge-flaschenpost" {
  name     = "sre-challenge-flaschenpost"
  location = var.location
  tags = {
    "department" = "SRE"
  }
}

# Creating a storage account in the specified resource group
resource "azurerm_storage_account" "srechallengeflaschenpost" {
  name                     = "srechallengeflaschenpost"
  resource_group_name      = azurerm_resource_group.sre-challenge-flaschenpost.name
  location                 = azurerm_resource_group.sre-challenge-flaschenpost.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  access_tier              = "Hot"
  tags                     = azurerm_resource_group.sre-challenge-flaschenpost.tags
}

# Creating a storage container in the storage account
resource "azurerm_storage_container" "sre" {
  name                  = "sre"
  storage_account_id    = azurerm_storage_account.srechallengeflaschenpost.id
  container_access_type = "private"
}