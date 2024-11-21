variable "vpc_cidr" {
    type = string
    default = "10.0.0.0/16" # users can override
}

variable "enable_dns_hostnames" {
    type = string
    default = true
}

variable "common_tags" {
    type = map
    default = {} # it is optional
}

variable "vpc_tags" {
    type = map
    default = {} # it is optional
}

variable "project_name" {
    type = string
}

variable "environment" {
    type = string
}

variable "igw_tags" {
    type = map
    default = {} # it is optional
}

variable "public_subnets_cidr" {
    type = list
    validation {
      condition = length(var.public_subnets_cidr) ==2
      error_message = "please give 2 public valid subnet cidr"
    }
}

variable "public_subnets_tags" {
    default = {} # it is optional
}

variable "private_subnets_cidr" {
    type = list
    validation {
      condition = length(var.private_subnets_cidr) ==2
      error_message = "please give 2 private valid subnet cidr"
    }
}

variable "private_subnets_tags" {
    default = {} # it is optional
}


variable "database_subnets_cidr" {
    type = list
    validation {
      condition = length(var.database_subnets_cidr) ==2
      error_message = "please give 2 database valid subnet cidr"
    }
}

variable "database_subnets_tags" {
    default = {} # it is optional
}

variable "nat_gateway_tags" {
    default = {} # it is optional
}

variable "public_route_table_tags" {
    default = {} # it is optional
}

variable "private_route_table_tags" {
    default = {} # it is optional
}

variable "database_route_table_tags" {
    default = {} # it is optional
}

variable "is_peering_required" {
    type = bool
    default = false
}

variable "acceptor_vpc_id" {
    type = string
    default = ""
}

variable "vpc_peering_tags" {
    default = {}
}


