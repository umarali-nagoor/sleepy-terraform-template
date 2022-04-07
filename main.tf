data "ibm_resource_group" "group" {
  name = var.resource_group
}

resource "ibm_is_vpc" "vpc" {
  name = var.vpc_name
  resource_group = data.ibm_resource_group.group.id
  tags = var.vpc_tags
}
