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

variable "datastore_index_kind" {
	type		= string
	description	= "Datastore Index Kind"
}