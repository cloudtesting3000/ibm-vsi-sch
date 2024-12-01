//variable ibmcloud_api_key {}
//variable ssh_key_name {}
//variable basename {}
variable region {
  default = "ca-tor"
}

variable "resource_group" {
  type = string
}

variable instance_name {
  default = "vsi-public-test-sch"
}

variable profile {
  default = "cx2-2x4"
}
variable image {
  default = "ibm-ubuntu-24-04-6-minimal-amd64-1"
}
