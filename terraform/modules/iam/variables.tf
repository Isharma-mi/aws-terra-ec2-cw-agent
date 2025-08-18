variable iam_ec2_role_name {
    description = "The name of the IAM role that will be used as the EC2 Instance Profile"
    type = string
}

variable iam_ec2_cw_policy_name {
    description = "The name of the policy that will be used to give the instance(s) permissions related to CW."
    type = string
}

variable iam_ec2_instance_profile {
    description = "The name of the EC2 instance profile."
}