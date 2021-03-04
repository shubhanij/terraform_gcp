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
	type 		= string
	description = "Pubsub topic name"
}

variable "pubsub_topic_dead_letter" {
	type 		= string
	description = "Pubsub topic dead letter name"
}

variable "pubsub_subscription_name" {
	type 		= string
	description	= "Pubsub Subscription Name"
}