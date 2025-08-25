# EC2 Module

## Description
> Contains the main.tf and variables.tf for setting up the EC2-related resources. 
> This module does not contain an outputs.tf since no resources are being outputted.

### Main
- Creates resources associated with the EC2 service (An instance, security group, etc.).
- Inputs the user data from the template's "user_data.tpl" file into the instance.
    - The user data inputs the infrastructure.json configuration for the agent with the CW namespace output passed in.
### Variables
- Contains a namespace value determining where the CloudWatch Agent will upload metrics to.
- Contains values relating to the instance configuration (ami, instance type, instance profile, security group rules, etc.)


## Directory Layout
    .
    |    main.tf
    |    README.md
    |    variables.tf