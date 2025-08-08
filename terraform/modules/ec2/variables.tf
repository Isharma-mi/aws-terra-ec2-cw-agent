variable "ec2_ami_id" {
    description = "The AMI for the instance."
    type = string
}

variable "ec2_instance_type" {
    default = "t3.micro"
    description = "The instance type for the instance."
    type = string
}