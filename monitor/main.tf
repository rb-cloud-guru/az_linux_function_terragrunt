#tf
terraform {
  backend "azurerm" {}
}

#provider
provider "azurerm" {
	features {
    resource_group {
       prevent_deletion_if_contains_resources = false
           }
  }
}

#application insights  
resource "azurerm_application_insights" "linux-application-insights" {
  name                = var.app_insights_name
  location            = var.location
  resource_group_name = var.resource_group_name
  application_type    = var.application_type
}