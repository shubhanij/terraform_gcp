variable "instance_name" {
	type		= string
	description	= "Name of the Instance"
}
variable "machine_type" {
	type 		= string
	description	= "Machine type of VM"
	default	 	= "f1-micro"
}

variable "project" {
	type 		= string
	description	= "The project that the machine should be created in."
}

variable "zone" {
	type 		= string
	description	= "The zone that the machine should be created in."
}

variable "network" {
	type 		= string
	description	= "Networks to attach to instance."
}

variable "service_account" {
	type 		= string
	description	= "Service account to attach to instance."
}