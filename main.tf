


data "ibm_is_instance_profile" "profile" {
   name = var.profile
}

data "ibm_is_image" "image" {
   name = var.image
}

resource "ibm_is_instance" "vsi1_instance" {
  name    = var.instance_name
  image   = data.ibm_is_image.image.id
  profile = data.ibm_is_instance_profile.profile.name
  
  primary_network_interface {
    name   = "eth0"
    subnet = "02q7-7d8fef8c-0f65-4894-b71e-48e52c8de598"
  }



  vpc  = "r038-de07c3bf-a33a-4f39-ac5a-85c42685bd27"
  zone = "ca-tor-1"
  keys = ["r038-531e1d42-e659-46d4-b0ca-b27388bc55aa"]
}
