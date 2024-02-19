
#path to root HCL
include {
    path = find_in_parent_folders()
}

#current path
terraform {
  source = "../func"
}

#dependencies
dependencies {
  paths = ["../rg", "../monitor"]
}

dependency "monitor" {
  config_path = "../monitor"
  skip_outputs = false
  mock_outputs = {
    instrumentation_key = "sampledata1"
    connection_string = "sampledata2"
  }
}

#inputs
inputs = {
  instrumentation_key = dependency.monitor.outputs.instrumentation_key
  connection_string = dependency.monitor.outputs.connection_string
}