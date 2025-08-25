# IAM Module

## Description
> Contains the main.tf, outputs.tf and variables.tf for setting up the IAM-related resources. 

### Main
- Creates a permissions policy to associate with a role (which has a trust policy to restrict usage to EC2 only).
- Creates the instance profile to associate the role for EC2 to use.
- Inputs the namespace to restrict the IAM policy for CloudWatch Agent permissions to that namespace.
### Outputs
- Exposes the instance profile to be consumed by an ec2 instance.
### Variables
- Contains a namespace value determining where the CloudWatch Agent will upload metrics to.


## Directory Layout
    .
    |    main.tf
    |    outputs.tf
    |    README.md
    |    variables.tf