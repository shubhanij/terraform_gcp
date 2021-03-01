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

variable "bigtable_instance_name" {
	type		= string
	description	= "Name of Bigtable instance."
}

variable "cluster_id" {
	type		= string
	description	= "Cluster Id for Bigtable instance."
}

variable "nodes_count" {
	type		= string
	description	= "Number of nodes in Bigtable instance."
}

variable "storage_type" {
	type		= string
	description	= "Cluster storage type"
}

variable "bigtable_table_name" {
	type		= string
	description	= "Bigtable table name"
}