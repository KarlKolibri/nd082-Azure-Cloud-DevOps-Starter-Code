variable "prefix" {
  description = "The prefix which should be used for all resources in this example"
  default     = "uda"
  type        = string
}

variable "resource_group" {
  description = "Name of the resource group"
  default     = "uda1"
  type        = string
}

variable "packer_resource_group" {
  description = "rg of packer"
  
  default     =  "Azuredevops"
  type        = string
}



variable "location" {
  description = "The Azure Region in which all resources in this example should be created."
  default     = "South Central US"
}



variable "nb_vms" {
  description = "VM Number"
  default     = 3
  type        = number
}
