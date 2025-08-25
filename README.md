# CW Agent Auto Installation on EC2 Instance

## Description
> A Terraform project provisioning an AWS EC2 instance with the CloudWatch Agent automatically installed and configured to push custom metrics in a dedicated namespace.

### Features
- EC2 Instance (Customizable to set instance type and restrict ingress/egress traffic)
    - Auto installation and starting of the CW Agent
- CW Custom namespace to separate instance metrics from other metrics
### Technologies Used
- AWS
- Bash
- HCL
- JSON

### Requirements
- AWS user with permissions related to EC2 and CloudWatch
- AWS CLI configured with the AWS credentials
- Terraform
### Usage
1. Navigate to /terraform/environments/dev
2. Modify the /terraform/environments/dev/provider-aws.tf region value (default: "us-east-1")
3. Run Terraform commands to apply infrastructure
    - terraform init: Prepares directory by installing providers, downloading modules, and performing other setup tasks.
    - terraform plan: Review the infrastructure and make sure everything looks good.
    - terraform apply: Make changes to the account by applying the infrastructure.


## Directory Layout
    .
    ├───templates               # user data .tpl file used by the instance
    │   └───dev
    └───terraform               # Terraform files
        ├───environments            
        │   └───dev             # dev environment configuration files
        └───modules             # Terraform modules grouped by AWS service type
            ├───cw
            ├───ec2
            └───iam