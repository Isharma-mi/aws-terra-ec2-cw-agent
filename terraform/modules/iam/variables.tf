variable "env" {
    description = "Prefix for the iam module's resources to indicate what env they are a part of."
    type = string
}

variable "namespace" {
    description = "Name of the outputted namespace to be used for cw agent."
    type = string
}