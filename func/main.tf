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

#function service plan
resource "azurerm_service_plan" "linux-service-plan" {
  name                = var.service_plan_name
  resource_group_name = var.resource_group_name
  location            = var.location
  os_type             = var.os_type
  sku_name            = var.sku_name
}

#create a storage account for the azure function
resource "azurerm_storage_account" "linux-storage-account" {
  name                     = var.storage_account_name
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = var.storage_account_tier
  account_replication_type = var.storage_account_type

#tags
  tags = {
    environment = "dev"
  }
}

#main function
resource "azurerm_linux_function_app" "linux-python-linux-function-app" {
  name                = var.function_app_name
  resource_group_name = var.resource_group_name
  location            = var.location
  
  service_plan_id            = azurerm_service_plan.linux-service-plan.id
  storage_account_name       = azurerm_storage_account.linux-storage-account.name
  storage_account_access_key = azurerm_storage_account.linux-storage-account.primary_access_key
  https_only                 = true
  site_config {
    application_insights_key = var.instrumentation_key
    application_insights_connection_string = var.connection_string
    application_stack {
        python_version = 3.11 #FUNCTIONS_WORKER_RUNTIME        
                      }
              }
  app_settings = {
    "APPINSIGHTS_INSTRUMENTATIONKEY" = var.instrumentation_key
  }
}

