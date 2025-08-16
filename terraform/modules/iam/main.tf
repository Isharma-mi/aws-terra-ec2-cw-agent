resource "aws_iam_role" "iam_ec2_role" { # TODO: Refactor name so it doesn't have iam in front (Already in iam module anyways)
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
    name = "CWAccessPolicy"
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
}