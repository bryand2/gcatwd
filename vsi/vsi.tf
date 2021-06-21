

##############################################################################
# Lookup resource objects needed for creating VSI.
##############################################################################

# VPC where VSI will be created
data ibm_is_vpc vpc {
    name = var.vpc_name
}

# SSH key for creating VSI
data ibm_is_ssh_key ssh_key {
    name = var.ssh_key_name
}


##############################################################################
# Provision VSI 1
##############################################################################

# Get the id of the subnet name
locals {
  vsi1_subnet_ids = [
    for i in data.ibm_is_vpc.vpc.subnets: 
        i.id if var.vsi1_vpc_subnet_name == i.name
  ]
}


# Image to be used (i.e. centos, redhat, etc)
data ibm_is_image vsi1_image {
    name = var.vsi1_image_name
}

resource ibm_is_instance vsi1 {
    name           = var.vsi1_name
    resource_group = data.ibm_resource_group.resource_group.id
    tags           = var.tags
    image          = data.ibm_is_image.vsi1_image.id
    profile        = var.vsi1_machine_profile
    keys           = [data.ibm_is_ssh_key.ssh_key.id]
    vpc            = data.ibm_is_vpc.vpc.id
    zone           = var.vsi1_vpc_zone
    primary_network_interface {
        name    = "eth0"
        subnet  = local.vsi1_subnet_ids[0]
    }   
}


##############################################################################
# Provision VSI 2
##############################################################################

# Get the id of the subnet name
locals {
  vsi2_subnet_ids = [
    for i in data.ibm_is_vpc.vpc.subnets: 
        i.id if var.vsi2_vpc_subnet_name == i.name
  ]
}


# Image to be used (i.e. centos, redhat, etc)
data ibm_is_image vsi2_image {
    name = var.vsi2_image_name
}

resource ibm_is_instance vsi2 {
    name           = var.vsi2_name
    resource_group = data.ibm_resource_group.resource_group.id
    tags           = var.tags
    image          = data.ibm_is_image.vsi2_image.id
    profile        = var.vsi2_machine_profile
    keys           = [data.ibm_is_ssh_key.ssh_key.id]
    vpc            = data.ibm_is_vpc.vpc.id
    zone           = var.vsi2_vpc_zone
    primary_network_interface {
        name    = "eth0"
        subnet  = "0767-fdb68067-c5c2-495d-88e4-14fe30592647"
    }   
}


##############################################################################
# Provision VSI 3
##############################################################################

# Get the id of the subnet name
locals {
  vsi3_subnet_ids = [
    for i in data.ibm_is_vpc.vpc.subnets: 
        i.id if var.vsi3_vpc_subnet_name == i.name
  ]
}


# Image to be used (i.e. centos, redhat, etc)
data ibm_is_image vsi3_image {
    name = var.vsi3_image_name
}

resource ibm_is_instance vsi3 {
    name           = var.vsi3_name
    resource_group = data.ibm_resource_group.resource_group.id
    tags           = var.tags
    image          = data.ibm_is_image.vsi3_image.id
    profile        = var.vsi3_machine_profile
    keys           = [data.ibm_is_ssh_key.ssh_key.id]
    vpc            = data.ibm_is_vpc.vpc.id
    zone           = var.vsi3_vpc_zone
    primary_network_interface {
        name    = "eth0"
        subnet  = local.vsi3_subnet_ids[0]
    }   
}

##############################################################################
# Provision VSI 4
##############################################################################

# Get the id of the subnet name
locals {
  vsi4_subnet_ids = [
    for i in data.ibm_is_vpc.vpc.subnets: 
        i.id if var.vsi4_vpc_subnet_name == i.name
  ]
}


# Image to be used (i.e. centos, redhat, etc)
data ibm_is_image vsi4_image {
    name = var.vsi4_image_name
}

resource ibm_is_instance vsi4 {
    name           = var.vsi4_name
    resource_group = data.ibm_resource_group.resource_group.id
    tags           = var.tags
    image          = data.ibm_is_image.vsi4_image.id
    profile        = var.vsi4_machine_profile
    keys           = [data.ibm_is_ssh_key.ssh_key.id]
    vpc            = data.ibm_is_vpc.vpc.id
    zone           = var.vsi4_vpc_zone
    primary_network_interface {
        name    = "eth0"
        subnet  = local.vsi4_subnet_ids[0]
    }   
}


##############################################################################
# Provision VSI 5
##############################################################################

# Get the id of the subnet name
locals {
  vsi5_subnet_ids = [
    for i in data.ibm_is_vpc.vpc.subnets: 
        i.id if var.vsi5_vpc_subnet_name == i.name
  ]
}


# Image to be used (i.e. centos, redhat, etc)
data ibm_is_image vsi5_image {
    name = var.vsi5_image_name
}

resource ibm_is_instance vsi5 {
    name           = var.vsi5_name
    resource_group = data.ibm_resource_group.resource_group.id
    tags           = var.tags
    image          = data.ibm_is_image.vsi5_image.id
    profile        = var.vsi5_machine_profile
    keys           = [data.ibm_is_ssh_key.ssh_key.id]
    vpc            = data.ibm_is_vpc.vpc.id
    zone           = var.vsi5_vpc_zone
    primary_network_interface {
        name    = "eth0"
        subnet  = local.vsi5_subnet_ids[0]
    }   
}


##############################################################################
# Provision VSI 6
##############################################################################

# Get the id of the subnet name
locals {
  vsi6_subnet_ids = [
    for i in data.ibm_is_vpc.vpc.subnets: 
        i.id if var.vsi6_vpc_subnet_name == i.name
  ]
}

# Image to be used (i.e. centos, redhat, etc)
data ibm_is_image vsi6_image {
    name = var.vsi6_image_name
}

resource ibm_is_instance vsi6 {
    name           = var.vsi6_name
    resource_group = data.ibm_resource_group.resource_group.id
    tags           = var.tags
    image          = data.ibm_is_image.vsi6_image.id
    profile        = var.vsi6_machine_profile
    keys           = [data.ibm_is_ssh_key.ssh_key.id]
    vpc            = data.ibm_is_vpc.vpc.id
    zone           = var.vsi6_vpc_zone
    primary_network_interface {
        name    = "eth0"
        subnet  = local.vsi6_subnet_ids[0]
    }   
}








