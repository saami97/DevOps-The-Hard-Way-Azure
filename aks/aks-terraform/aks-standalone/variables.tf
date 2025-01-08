variable "name" {
  type = string
  default = ""
}

variable "resource_group_name" {
  type = string
  default = ""
}

variable "location" {
  type = string
  default = ""
}

variable "node_count" {
  type = string
  default = 3
}

  variable "k8s_version" {
    type = string
    default = ""
  }