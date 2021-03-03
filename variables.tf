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

variable "display_name" {
	type		= string
	description	= "Dialog Flow Agent display name"
}
variable "time_zone" {
	type 		= string
	description = "Time Zone"
}

variable "match_mode" {
	type 		= string
	description	= "Match mode for Dialog Flow Agent"
}

variable "api_version" {
	type 		= string
	description	= "API version"
}

variable "tier" {
	type		= string
	description	= "Dialog Flow Agent tier"
}