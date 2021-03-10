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

variable "service_account_id" {
	type 		= string
	description = "Account id for service account"
}

variable "service_account_display_name" {
	type 		= string
	description = "Account id for service account"
}

variable "cluster_name" {
	type 		= string
	description	= "gke cluster name"
}

variable "node_pool_name" {
	type 		= string
	description	= "node pool name for gke cluster"
}

variable "machine_type" {
	type 		= string
	description	= "Machine type for gke node"
}
