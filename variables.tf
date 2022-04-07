variable "vpc_name"{
  default = "testsubnet"
}

variable "resource_group" {
  type = string
}

variable "vpc_tags" {
  type = list(string)
}

