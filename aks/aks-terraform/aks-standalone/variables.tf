variable "name" {
  type    = string
  default = "aksenvironment01"
}

variable "resource_group_name" {
  type    = string
  default = "devrelasaservice"
}

variable "location" {
  type    = string
  default = "eastus"
}

variable "node_count" {
  type    = string
  default = 3
}

variable "k8s_version" {
  type    = string
  default = "1.31.2"
}

variable "sub" {
  type = string
  default = "686b24a1-5707-4415-be01-f2b6e879e680"
}