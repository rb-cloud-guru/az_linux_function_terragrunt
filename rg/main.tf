
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

#rg Creation
resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location

  #tags
  tags = {
    environment = "dev"
  }
}

