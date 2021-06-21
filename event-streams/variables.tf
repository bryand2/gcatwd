##############################################################################
# Account Variables
##############################################################################

variable ibmcloud_api_key {
  description = "The IBM Cloud platform API key needed to deploy IAM enabled resources"
  type        = string
  default     = ""
}

variable resource_group {
  description = "Name of resource group to create the Event Streams instance"
  type        = string
  default     = "workday"
}

variable ibm_region {
  description = "IBM Cloud region where all resources will be deployed"
  type        = string
  default     = "us-east"
}

variable tags {
    description = "Enter any tags that you want to associate with Event Streams and associated resources."
    type        = list(string)
    default     = [
      "project:gcatwd",
      "env:dev"
    ]
}




##############################################################################
# Event Streams Variables
##############################################################################

variable es_name {
  description = "Name of the Event Streams instance to be created"
  type        = string
}

variable es_plan {
  description = "Plan type (i.e. lite, standard, enterprise-3nodes-2tb)"
  type        = string
  default     = "standard"
}

variable es_topic_name {
  description = "Name of first topic in event streams"
  type        =  string
  default     = "my-es-topic"
}

variable es_timeout {
  description = "Timeout setting for terraform operations (i.e. 15m, 1h, etc.). Use 3h when creating enterprise instance."
  type        =  string
  default     = "15m"
}

##############################################################################


