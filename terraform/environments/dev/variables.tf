variable "env" {
    description = "Prefix for each module's resources to indicate what env they are a part of."
    type = string
}

# ------------------------------
# ec2 module
# ------------------------------
variable "ec2_instance_type" {
    description = "The instance type for the instance."
    type = string
}

variable "ec2_sg_egress_cidr_ipv4" {
    description = "The outbound cidr ipv4 for the sg."
    type = string
}

variable "ec2_sg_ingress_cidr_ipv4" {
    description = "The inbound cidr ipv4 for the sg."
    type = string
}