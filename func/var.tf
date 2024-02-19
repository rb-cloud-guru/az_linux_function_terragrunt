#region
variable location {
    description = "Location of the Virtual Net"
}

#rg name
variable resource_group_name {
    description = "Resource Group Name for the virtual net"
}

#service plan name
variable service_plan_name {
    description = "The name of the service plan name"
}

#os type
variable os_type {
    description = "The function os type"
}

#sku name
variable sku_name {
    description = "The function sku name"
}

#function name
variable function_app_name {
    description = "Name of the Linux Function"
}

#instrumentaion key
variable instrumentation_key {
    description = "name of the instrumentation key"
}

#connection string
variable connection_string {
    description = "name of the connection string"
}

#storage name
variable storage_account_name {
    description = " The name of the Storage Account Name"
} 

#storage tier
variable storage_account_tier {
    description = " The tier of the Storage Account"
} 

#storage replication type
variable storage_account_type {
    description = " The replication type of the Storage Account"
} 