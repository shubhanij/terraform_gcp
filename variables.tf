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

variable "instance_name" {
	type		= string
	description	= "Name of the Instance"
}

variable "machine_type" {
	type 		= string
	description	= "Machine type of VM"
	default	 	= "f1-micro"
}

variable "image" {
	type 		= string
	description	= "The image from which to initialize this disk."
}

variable "dns_managed_zone" {
	type 		= string
	description	= "DNS managed zone name"
}

variable "dns_name" {
	type 		= string
	description	= "DNS name"
}