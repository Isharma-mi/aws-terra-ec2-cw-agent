output "iam_ec2_role_name" {
    value = aws_iam_role.ec2_role.name
    description = "The name of the iam role to be used as the EC2 instance profile."
}