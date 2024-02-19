
#root path
include {
    path = find_in_parent_folders()
}

#current path
terraform {
    source = "../rg"
}