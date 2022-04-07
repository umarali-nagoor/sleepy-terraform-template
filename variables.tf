variable "vpc_name"{
  type = string
}

variable "resource_group" {
  type = string
}

variable "vpc_tags" {
  type = list(string)
  default = ["tag:test1", "tag:test2"]
}

