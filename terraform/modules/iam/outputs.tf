output "iam_ec2_instance_profile_name" {
    value = aws_iam_instance_profile.ec2_instance_profile.name
    description = "The name of the instance profile to be used by the EC2 instance."
}