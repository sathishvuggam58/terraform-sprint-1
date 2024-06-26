variable "resource_group_name" {
  type = string
  description = "name of the rg"
}
variable "location" {
  type = string
  description = "location where we create resources"
  default = "north europe"
}
variable "storage_account_name" {
  type = string
  description = "name of the storage account"
}