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
		description	= "Name of the Instance template for MIG"
	}

	variable "bigquery_dataset_id" {
		type 		= string
		description	= "Machine type of VM"
		default	 	= "f1-micro"
	}

	variable "bigquery_dataset_location" {
		type 		= string
		description	= "The image from which to initialize this disk."
	}

	variable "dataflow_template_bucket" {
		type 		= string
		description	= "Networks to attach to instances created from this template."
	}

	variable "bigquery_table_id" {
		type 		= string
		description	= "Family of the image"
	}

	variable "dataflow_job_name" {
		type 		= string
		description	= "Project ID of image"
	}

	variable "network" {
		type 		= string
		description	= "Zone in which compute disk to be created"
	}