##############################################################################
# Account Variables
##############################################################################

#variable ibmcloud_api_key {
#  description = "The IBM Cloud platform API key needed to deploy IAM enabled resources"
#  type        = string
#  default     = ""
#}

variable resource_group {
  description = "Name of resource group to create the VSI"
  type        = string
  default     = "workday"
}

variable ibm_region {
  description = "IBM Cloud region where all resources will be deployed"
  type        = string
  default     = "us-east"
}

variable tags {
    description = "Enter any tags that you want to associate with VSI and associated resources."
    type        = list(string)
    default     = [
      "project:gcatwd",
      "env:dev"
    ]
}




##############################################################################
# Common VSI Variables
##############################################################################

variable vpc_name {
  description = "Name of VPC where the VSI instance will be created"
  type        = string
  default     = "bd-wday-vpc"
}

variable ssh_key_name {
  description = "Name of the ssh key to use for vsi."
  type        = string
  default     = "bryand-ssh-key"
}


##############################################################################
# VSI 1 Variables
##############################################################################

variable vsi1_name {
  description = "Name of the VSI instance to be created"
  type        = string
  default     = "wd-vsi-1"
}

variable vsi1_image_name {
  description = "Image name used for VSI. Run 'ibmcloud is images' to find available images in a region"
  type        = string
  default     = "ibm-centos-8-3-minimal-amd64-3"
}

variable vsi1_machine_profile {
  description = "VSI machine profile (i.e. mx2-32x256). Run 'ibmcloud is instance-profiles' to get a list of regional profiles"
  type        =  string
  default     = "mx2-32x256"
}

variable vsi1_vpc_zone {
  description = "Name of the zone where the VSI will be deployed (i.e. us-south-1, us-south-2, us-east-1, etc). Zone should match VPC region."
  type        = string
  default     = "us-east-1"
}

variable vsi1_vpc_subnet_name {
  description = "Name of the subnet where the VSI will be deployed. Subnet MUST be part of the VPC and zone or else VSI creation will fail."
  type        = string
  default     = "subnet-az1-priv"
}

##############################################################################



##############################################################################
# VSI 2 Variables
##############################################################################

variable vsi2_name {
  description = "Name of the VSI instance to be created"
  type        = string
  default     = "wd-vsi-2"
}

variable vsi2_image_name {
  description = "Image name used for VSI. Run 'ibmcloud is images' to find available images in a region"
  type        = string
  default     = "ibm-centos-8-3-minimal-amd64-3"
}

variable vsi2_machine_profile {
  description = "VSI machine profile (i.e. mx2-32x256). Run 'ibmcloud is instance-profiles' to get a list of regional profiles"
  type        =  string
  default     = "mx2-32x256"
}

variable vsi2_vpc_zone {
  description = "Name of the zone where the VSI will be deployed (i.e. us-south-1, us-south-2, us-east-1, etc). Zone should match VPC region."
  type        = string
  default     = "us-east-2"
}

variable vsi2_vpc_subnet_name {
  description = "Name of the subnet where the VSI will be deployed. Subnet MUST be part of the VPC and zone or else VSI creation will fail."
  type        = string
  default     = "subnet-az2-priv"
}

##############################################################################



##############################################################################
# VSI 3 Variables
##############################################################################

variable vsi3_name {
  description = "Name of the VSI instance to be created"
  type        = string
  default     = "wd-vsi-3"
}

variable vsi3_image_name {
  description = "Image name used for VSI. Run 'ibmcloud is images' to find available images in a region"
  type        = string
  default     = "ibm-centos-8-3-minimal-amd64-3"
}

variable vsi3_machine_profile {
  description = "VSI machine profile (i.e. mx2-32x256). Run 'ibmcloud is instance-profiles' to get a list of regional profiles"
  type        =  string
  default     = "mx2-32x256"
}

variable vsi3_vpc_zone {
  description = "Name of the zone where the VSI will be deployed (i.e. us-south-1, us-south-2, us-east-1, etc). Zone should match VPC region."
  type        = string
  default     = "us-east-3"
}

variable vsi3_vpc_subnet_name {
  description = "Name of the subnet where the VSI will be deployed. Subnet MUST be part of the VPC and zone or else VSI creation will fail."
  type        = string
  default     = "subnet-az3-priv"
}

##############################################################################


##############################################################################
# VSI 4 Variables
##############################################################################

variable vsi4_name {
  description = "Name of the VSI instance to be created"
  type        = string
  default     = "scylla-vsi-1"
}

variable vsi4_image_name {
  description = "Image name used for VSI. Run 'ibmcloud is images' to find available images in a region"
  type        = string
  default     = "ibm-centos-8-3-minimal-amd64-3"
}

variable vsi4_machine_profile {
  description = "VSI machine profile (i.e. mx2-32x256). Run 'ibmcloud is instance-profiles' to get a list of regional profiles"
  type        =  string
  default     = "mx2-32x256"
}

variable vsi4_vpc_zone {
  description = "Name of the zone where the VSI will be deployed (i.e. us-south-1, us-south-2, us-east-1, etc). Zone should match VPC region."
  type        = string
  default     = "us-east-1"
}

variable vsi4_vpc_subnet_name {
  description = "Name of the subnet where the VSI will be deployed. Subnet MUST be part of the VPC and zone or else VSI creation will fail."
  type        = string
  default     = "subnet-az1-priv"
}

##############################################################################


##############################################################################
# VSI 5 Variables
##############################################################################

variable vsi5_name {
  description = "Name of the VSI instance to be created"
  type        = string
  default     = "scylla-vsi-2"
}

variable vsi5_image_name {
  description = "Image name used for VSI. Run 'ibmcloud is images' to find available images in a region"
  type        = string
  default     = "ibm-centos-8-3-minimal-amd64-3"
}

variable vsi5_machine_profile {
  description = "VSI machine profile (i.e. mx2-32x256). Run 'ibmcloud is instance-profiles' to get a list of regional profiles"
  type        =  string
  default     = "mx2-32x256"
}

variable vsi5_vpc_zone {
  description = "Name of the zone where the VSI will be deployed (i.e. us-south-1, us-south-2, us-east-1, etc). Zone should match VPC region."
  type        = string
  default     = "us-east-2"
}

variable vsi5_vpc_subnet_name {
  description = "Name of the subnet where the VSI will be deployed. Subnet MUST be part of the VPC and zone or else VSI creation will fail."
  type        = string
  default     = "subnet-az2-priv"
}

##############################################################################


##############################################################################
# VSI 6 Variables
##############################################################################

variable vsi6_name {
  description = "Name of the VSI instance to be created"
  type        = string
  default     = "scylla-vsi-3"
}

variable vsi6_image_name {
  description = "Image name used for VSI. Run 'ibmcloud is images' to find available images in a region"
  type        = string
  default     = "ibm-centos-8-3-minimal-amd64-3"
}

variable vsi6_machine_profile {
  description = "VSI machine profile (i.e. mx2-32x256). Run 'ibmcloud is instance-profiles' to get a list of regional profiles"
  type        =  string
  default     = "mx2-32x256"
}

variable vsi6_vpc_zone {
  description = "Name of the zone where the VSI will be deployed (i.e. us-south-1, us-south-2, us-east-1, etc). Zone should match VPC region."
  type        = string
  default     = "us-east-3"
}

variable vsi6_vpc_subnet_name {
  description = "Name of the subnet where the VSI will be deployed. Subnet MUST be part of the VPC and zone or else VSI creation will fail."
  type        = string
  default     = "subnet-az3-priv"
}

##############################################################################









