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

variable "instance_template_name" {
	type		= string
	description	= "Name of the Instance template for MIG"
}

variable "machine_type" {
	type 		= string
	description	= "Machine type of VM"
	default	 	= "f1-micro"
}

variable "source_image" {
	type 		= string
	description	= "The image from which to initialize this disk."
}

variable "network_interface" {
	type 		= string
	description	= "Networks to attach to instances created from this template."
}

variable "source_image_family" {
	type 		= string
	description	= "Family of the image"
}

variable "source_image_project" {
	type 		= string
	description	= "Project ID of image"
}

variable "compute_disk_zone" {
	type 		= string
	description	= "Zone in which compute disk to be created"
}

variable "instance_group_manager" {
	type 		= string
	description	= "Name of the instance group manager"
}

variable "base_instance_name" {
	type 		= string
	description	= "Name of the base instance"
}






