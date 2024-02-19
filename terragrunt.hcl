#backend
remote_state {
    backend = "azurerm"
    config = {
        resource_group_name = "replication"
        storage_account_name = "tfstorage2024"
        container_name = "tfstatedev"
        key = "${path_relative_to_include()}/terraform.tfstate"
    }
}

#var
inputs = {
    location = "eastus"
    resource_group_name = "azurefungus"
    storage_account_name = "marmar4038"
    storage_account_tier = "Standard"
    storage_account_type = "LRS"
    os_type = "Linux"
    sku_name = "Y1"
    service_plan_name = "tonton1976"
    app_insights_name = "appinsightsma3"
    application_type = "other"
    function_app_name = "linuxfunct2"
 }

