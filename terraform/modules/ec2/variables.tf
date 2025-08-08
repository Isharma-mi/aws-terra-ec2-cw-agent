variable "ec2_ami_id" {
    description = "The ID of the AMI for the instance."
    type = string
}

variable "ec2_instance_type" {
    default = "t3.micro"
    description = "The instance type for the instance."
    type = string
}

variable "ec2_tag_name" {
    description = "The value of the name tag of the instance."
    type = string
}

variable "ec2_sg_name" {
    description = "The name of the security group of the instance."
    type = string
}