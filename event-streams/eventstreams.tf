
#### Scenario 1: Create Event Streams service instance and topic
resource "ibm_resource_instance" "es_instance_1" {
  name              = var.es_name
  service           = "messagehub"
  plan              = var.es_plan
  location          = var.ibm_region
  resource_group_id = data.ibm_resource_group.resource_group.id
  tags              = var.tags

  # parameters = {
  #   service-endpoints    = "private"                   # for enterprise instance only, Options are: "public", "public-and-private", "private". Default is "public" when not specified.
  #   private_ip_allowlist = "[10.0.0.0/32,10.0.0.1/32]" # for enterprise instance only. Specify 1 or more IP range in CIDR format
  #   # document about using private service endpoint and IP allowlist to restrict access: https://cloud.ibm.com/docs/EventStreams?topic=EventStreams-restrict_access

  #   throughput   = "150"  # for enterprise instance only. Options are: "150", "300", "450". Default is "150" when not specified.
  #   storage_size = "2048" # for enterprise instance only. Options are: "2048", "4096", "6144", "8192", "10240", "12288". Default is "2048" when not specified.
  #   kms_key_crn  = "crn:v1:bluemix:public:kms:us-south:a/6db1b0d0b5c54ee5c201552547febcd8:0aa69b09-941b-41b2-bbf9-9f9f0f6a6f79:key:dd37a0b6-eff4-4708-8459-e29ae0a8f256" # for enterprise instance only. Specify the CRN of a root key from a Key Management Service instance used to encrypt disks.
  #   # Note: when throughput is "300", storage_size starts from "4096",  when throughput is "450", storage_size starts from "6144"
  #   # document about supported combinations of throughput and storage_size: https://cloud.ibm.com/docs/EventStreams?topic=EventStreams-ES_scaling_capacity#ES_scaling_combinations
  # }

  timeouts {
     create = var.es_timeout # use 3h when creating enterprise instance, add additional 1h for each level of non-default throughput, add additional 30m for each level of non-default storage_size
     update = var.es_timeout # use 1h when updating enterprise instance, add additional 1h for each level of non-default throughput, add additional 30m for each level of non-default storage_size
     delete = var.es_timeout
  }
}

resource "ibm_event_streams_topic" "es_topic_1" {
  resource_instance_id = ibm_resource_instance.es_instance_1.id
  name                 = var.es_topic_name
  partitions           = 1
  config = {
    "cleanup.policy"  = "compact,delete"
    "retention.ms"    = "86400000"
    "retention.bytes" = "1073741824"
    "segment.bytes"   = "536870912"
  }
}






