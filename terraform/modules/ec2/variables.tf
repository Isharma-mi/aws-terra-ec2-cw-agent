variable env {
    description = "Prefix for the ec2 module's resources to indicate what env they are a part of."
    type = string
}

# ------------------------------
# EC2 Instance
# ------------------------------
variable "ec2_ami_id" {
    description = "The ID of the AMI for the instance."
    type = string
}

variable "ec2_instance_type" {
    default = "t3.micro"
    description = "The instance type for the instance."
    type = string
}

# ------------------------------
# EC2 Instance IAM
# ------------------------------

variable "ec2_instance_profile_name" {
    description = "The name of the outputted instance profile to be used for the EC2 instance profile."
    type = string
}

# ------------------------------
# EC2 Instance SG
# ------------------------------

variable "ec2_sg_egress_cidr_ipv4" {
    description = "The outbound cidr ipv4 for the sg."
    type = string
}

variable "ec2_sg_ingress_cidr_ipv4" {
    description = "The inbound cidr ipv4 for the sg."
    type = string
}