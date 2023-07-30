variable "resource_group_name" {
  type = string
  description = "Resource Group name in Microsoft Azure"
}

variable "location" {
  type = string
  description = "Resources location in Microsoft Azure"
}

variable "vnet" {
    type = string
    description = "(optional) describe your variable"
}
variable "vnet-addr" {
    type = list(string)
    description = "(optional) describe your variable"
}
variable "subnet" {
    type = string
    description = "(optional) describe your variable"
}
variable "subnet-addr" {
    type = list(string)
    description = "(optional) describe your variable"
}
variable "cluster_name" {
  type = string
  description = "AKS name in Microsoft Azure"
}

variable "pvt_cluster"{
  type=string
}

variable "system_node_count" {
  type = number
  description = "Number of AKS worker nodes"
}

variable "node_pool_name"{
type=string
}
variable "vm_size"{
type=string
}

variable "auto_scaling"{
type=string
}
variable "os_disk_size"{
type=number
}
variable "client_id"{
type=string
}
variable "client_secret"{
type=string
}
variable "lb_sku"{
type=string
}
variable "network_plugin"{
type=string
}