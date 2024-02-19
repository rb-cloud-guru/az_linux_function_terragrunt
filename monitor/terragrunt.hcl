
#path to root HCL
include {
    path = find_in_parent_folders()
}

#dependency
dependencies {
  paths = ["../rg"]
}

#current path
terraform {
  source = "../monitor"
}