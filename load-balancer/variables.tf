variable "project" {
	type 		= string
	description	= "Project in which resources will be created."
}

variable "region" {
	type 		= string
	description	= "Region in which any regional resources will be created."
}

variable "zone" {
	type 		= string
	description	= "Zone in which resources will be created."
}

variable "compute_forwarding_rule" {
	type 		= string
	description = "Name of the Compute Forwarding rule"
}

variable "backend_service" {
	type 		= string
	description	= "Name of the Backend service"
}

variable "compute_health_check" {
	type		= string
	description	= "Name of the Compute Health Check"
}