variable "project" {
	type 		= string
	description = "Project in which the resource belongs"
}

variable "region" {
	type 		= string
	description	= "Region in which any regional resources in an instance template belongs"
}

variable "zone" {
	type 		= string
	description	= "The zone that the machine should be created in"
}

variable "pubsub_topic_name" {
	type		= string
	description	= "Name of the Pubsub topic"
}

variable "dataflow_data_dump_bucket" {
	type 		= string
	description	= "Bucket for Dataflow job to dump its temporary data"
}

variable "pubsub_subscription_name" {
	type 		= string
	description	= "PubSub subscription name"
}

variable "dataflow_job_name" {
	type 		= string
	description	= "Dataflow Job name"
}

variable "network" {
	type 		= string
	description	= "Network for Dataflow job"
}