# CW Agent Auto Installation on EC2 Instance

## Description
This project showcases how to setup an AWS EC2 instance with the CloudWatch Agent installed on it to push custom metrics.

### Features
- EC2 Instance (Customizable to set instance type and restrict ingress/egress traffic)
    - Auto installation and starting of the CW Agent
- CW Custom namespace to separate instance metrics from other metrics

### Requirements
- AWS account with permissions related to EC2 and CloudWatch
- AWS CLI to setup AWS credentials for Terraform
- Terraform to run commands to apply infrastructure

### Setup
- 