#instrumentation key
output "instrumentation_key" {
  value = azurerm_application_insights.linux-application-insights.instrumentation_key
  sensitive = true
}

#connection string
output "connection_string" {
  value = azurerm_application_insights.linux-application-insights.connection_string
  sensitive = true
}