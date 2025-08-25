# dev Environment

## Description
> Contains the files configuring the cloud infrastructure for the dev environment.
> NOTE: No prod environment was created as this project is intended to showcase terraform knowledge.


## Directory Layout
    .
    │   .terraform.lock.hcl
    │   backend.tf                      # Sets the cloud provider to use (AWS)
    │   data.tf                         # Gets resources dynamically in case they change (The AMI for the linux instances)
    │   infrastructure.json             # Configures the CloudWatch agent (Interval for pushing metrics, what metrics to collect, etc.)
    │   main.tf                         # Invoke specific modules and set all the variable values from the modules here
    │   provider-aws.tf                 # NOTE: Can modify the region here if want infrastructure deployed elsewhere (Default: "us-east-1")
    │   README.md                       
    │   terraform.tfvars                # Assigns static variables their values 
    │   variables.tf                    # Variables are declared here to be assigned values in the terraform.tfvars (static values) or main.tf (data/output/dynamic values)