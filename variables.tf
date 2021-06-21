##############################################################################
# Account Variables
##############################################################################

variable ibmcloud_api_key {
  description = "The IBM Cloud platform API key needed to deploy IAM enabled resources."
  type        = string
}

variable resource_group {
    description = "Name of resource group to create VPC."
    type        = string
    default     = "default"
}

variable ibm_region {
    description = "IBM Cloud region where all resources will be deployed."
    type        = string
    default     = "us-east"
}

variable tags {
    description = "Enter any tags that you want to associate with VPC and associated resources."
    type        = list(string)
    default     = [
      "project:gcatwd",
      "env:dev"
    ]
}


##############################################################################
# VPC variables.
##############################################################################

variable vpc_name {
    description = "Name of the vpc to be created"
    type        = string
}

variable classic_access {
  description = "Enable VPC Classic Access. Note: only one VPC per region can have classic access"
  type        = bool
  default     = false
}

variable address_prefixes {
    type = map(object({
        name = string
        cidr = string
        zone = number
    }))
    default = {
        prefix-1 = { name="address-prefix-1", cidr="10.240.0.0/18", zone="1"},
        prefix-2 = { name="address-prefix-2", cidr="10.240.64.0/18", zone="2"},
        prefix-3 = { name="address-prefix-3", cidr="10.240.128.0/18", zone="3"},
    }
}

variable subnets {
    type = map(object({
        name = string
        cidr = string
        zone = number
        pubgw = bool
    }))
    default = {
        subnet-1a = {name="subnet-az1-pub", cidr="10.240.0.0/24", zone="1", pubgw="false"},
        subnet-1b = {name="subnet-az1-priv", cidr="10.240.1.0/24", zone="1", pubgw="false"},
        subnet-2a = {name="subnet-az2-pub", cidr="10.240.64.0/24", zone="2", pubgw="false"},
        subnet-2b = {name="subnet-az2-priv", cidr="10.240.65.0/24", zone="2", pubgw="false"},
        subnet-3a = {name="subnet-az3-pub", cidr="10.240.128.0/24", zone="3", pubgw="false"}
        subnet-3b = {name="subnet-az3-priv", cidr="10.240.129.0/24", zone="3", pubgw="false"}
    }
}


variable public_gateways {
    type = map(object({
        name = string
        zone = number
    }))
    default = {
        gw-1 = {name="public-gw-1", zone="1"},
        gw-2 = {name="public-gw-2", zone="2"},
        gw-3 = {name="public-gw-3", zone="3"}
    }
}


variable allow_ssh {
  description = "Set to true if the VPC's default security group should allow inbound SSH traffic."
  type        = bool
  default     = true
}

variable allow_ping {
  description = "Set to true if the VPC's default security group should allow ICMP/Ping traffic."
  type        = bool
  default     = true
}



variable acl_rules {
  # description = "Access control list rule set"
  # type        = list(string)
  default = [
    {
      name        = "egress"
      action      = "allow"
      source      = "0.0.0.0/0"
      destination = "0.0.0.0/0"
      direction   = "inbound"
    },
    {
      name        = "ingress"
      action      = "allow"
      source      = "0.0.0.0/0"
      destination = "0.0.0.0/0"
      direction   = "outbound"
    }
  ]
}

