resource "aws_iam_role" "iam_ec2_role" {
    name = var.iam_ec2_role_name

    assume_role_policy = jsonencode({
        Version = "2012-10-17"
        Statement = [
            {
                Effect = "Allow"
                Principal = {
                  Service = "ec2.amazonaws.com"
                }
                Action = "sts:AssumeRole"
            }
        ]
    })

    tags = {
        name = var.iam_ec2_role_name
    }
}

# TODO: Make the IAM policy for CW Agent
    # CloudWatchAgentServerPolicy restricted by the namespace
    # TODO: Restrict the policy to the namespace once CW module made