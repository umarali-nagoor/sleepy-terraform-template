resource "ibm_is_vpc" "vpc" {
  name = "driftvpc"
}
resource "ibm_is_subnet" "subnet" {
  name            = var.subnet_name
  vpc             = ibm_is_vpc.vpc.id
  zone            = "us-south-1"
  total_ipv4_address_count  = 256
}

resource "ibm_is_instance" "instance1" {
  name     = "automation-instance"
  image    = var.image
  profile  = var.profile
  primary_network_interface {
    subnet = ibm_is_subnet.subnet.id
  }
  vpc       = ibm_is_vpc.vpc.id
  zone      = "us-south-1"
  keys      = [var.ssh_key_id]
}
resource "ibm_is_security_group" "sg" {
  name = "test-sg"
  vpc  = ibm_is_vpc.vpc.id
}
resource "ibm_is_security_group_rule" "outbound" {
  group     = ibm_is_security_group.sg.id
  direction = "outbound"
  remote = "127.0.0.1"
}
resource "ibm_is_security_group_rule" "inbound" {
  group     = ibm_is_security_group.sg.id
  direction = "inbound"
  remote = "127.0.0.1"
}
resource "ibm_is_security_group_rule" "icmp" {
  group     = ibm_is_security_group.sg.id
  direction = "inbound"
  remote    = "127.0.0.1"
  icmp {
    code = 20
    type = 30
  }
}