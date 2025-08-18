resource "aws_iam_role" "ec2_role" {
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

resource "aws_iam_policy" "ec2_cw_policy" {
    name = var.iam_ec2_cw_policy_name
    description = "Policy similar to CloudWatchAgentServerPolicy's but restricted by namespace"

    policy = jsonencode({
        Version = "2012-10-17"
        Statement = [
            {
                Sid = "CWACloudWatchServerPermissionsModified"
                Action = [
                    "cloudwatch:PutMetricData",
                    "ec2:DescribeVolumes",
                    "ec2:DescribeTags",
                    "logs:PutLogEvents",
                    "logs:PutRetentionPolicy",
                    "logs:DescribeLogStreams",
                    "logs:DescribeLogGroups",
                    "logs:CreateLogStream",
                    "logs:CreateLogGroup",
                    "xray:PutTraceSegments",
                    "xray:PutTelemetryRecords",
                    "xray:GetSamplingRules",
                    "xray:GetSamplingTargets",
                    "xray:GetSamplingStatisticSummaries"
                ]
                Effect = "Allow"
                Resource = "*" # TODO: Restrict the policy to the namespace once the CW module is made
            }
        ]
    })

    tags = {
        name = var.iam_ec2_cw_policy_name
    }
}

resource "aws_iam_role_policy_attachment" "ec2_role_cw_policy_attach" {
    policy_arn = aws_iam_policy.ec2_cw_policy.arn
    role = aws_iam_role.ec2_role.name
}

resource "aws_iam_instance_profile" "ec2_instance_profile" {
    name = var.iam_ec2_instance_profile
    role = aws_iam_role.ec2_role.name

    tags = {
        name = var.iam_ec2_instance_profile
    }
}