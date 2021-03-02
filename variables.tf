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

variable "dataset_id" {
	type		= string
	description	= "Bigquery Dataset id"
}

variable "bigquery_dataset_location" {
	type 		= string
	description	= "Bigquery Dataset location"
}