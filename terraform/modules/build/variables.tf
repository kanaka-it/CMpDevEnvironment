##############################################################
# Build Artifact (Container) Prefix  
##############################################################
variable artifact_prefix {
    type = "string"
}

##############################################################
# Build Artifact (Container) Name  
##############################################################
variable artifact_name {
        type = "string"
}

##############################################################
# Build Type (docker, java, etc.) see build module for options
##############################################################
variable build_type {
        type = "string"
}

##############################################################
# AWS IAM role providing build permissions
##############################################################
variable service_role_arn {
    type = "string"
}

##############################################################
# VPC that the build will run within
##############################################################
variable vpc_id {
        type = "string"
}

##############################################################
# Subnets that the build will run within
##############################################################
variable subnet_ids {
    type = "list"
}

##############################################################
# Security Groups that secure the build process
##############################################################
variable security_group_ids {
    type = "list"
}

##############################################################
# Build timeout in minutes
##############################################################
variable timeout {
    default = 5
}

##############################################################
# Build compute size
##############################################################
variable host_compute_type {
    default = "BUILD_GENERAL1_SMALL"
}

##############################################################
# Build host type
##############################################################
variable host_type {
    default = "LINUX_CONTAINER"
}

##############################################################
# Required if Docker is used within build
##############################################################
variable host_is_privileged {
    default = true
}