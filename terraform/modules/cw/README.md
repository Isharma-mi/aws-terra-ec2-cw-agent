# CloudWatch Module

## Description
> Contains the output.tf and variables.tf for setting up the CloudWatch namespace. 
> This module does not contain a main.tf since no resources are actually made here.

### Variables
- Contains a namespace value determining where the CloudWatch Agent will upload metrics to.
### Outputs
- Exposes the namespace value to be set elsewhere.


## Directory Layout
    .
    │       outputs.tf
    │       README.md
    │       variables.tf