variable "resource_group_name" {
  description = "rg name"
  type = string
}

variable "location" {
  description = "location"
  type = string
}

variable "nic_name" {
  description = "nic"
  type = string
}

variable "vm_name" {
  description = "vm name"
  type = string
}

variable "vm_size" {
  description = "vm name"
  type = string
}

variable "publisher" {
  description = "OS Publisher"
  type        = string
}

variable "offer" {
  description = "OS Offer"
  type        = string
}

variable "sku" {
  description = "OS SKU"
  type        = string
}

variable "caching" {
  description = "caching type"
  type        = string
}

variable "storage_account_type" {
  description = "Storage account type"
  type        = string
}

variable "key_vault" {
  description = "Key Vault name"
  type        = string
}

variable "username" {
  description = "username for the VM"
  type        = string
}

variable "password" {
  description = "password for the VM"
  type        = string
}

variable "build_dir" {
  description = "Directory for build files"
  type        = string
}

