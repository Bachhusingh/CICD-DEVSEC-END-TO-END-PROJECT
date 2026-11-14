# ##############################################################################
# Root — Input Variables
# All values are set in dev.tfvars
# ##############################################################################

# ── General ───────────────────────────────────────────────────────────────────
variable "aws_region" {
  description = "AWS region to deploy into"
  type        = string
  default = "ap-south-1"
}

variable "environment" {
  description = "Environment name e.g. dev, staging, prod"
  type        = string
  default = "Dev"
}

# ── EKS Cluster ───────────────────────────────────────────────────────────────
variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
  default = "dev-cluster-bks"
}

variable "cluster_version" {
  description = "Kubernetes version for the EKS cluster"
  type        = string
  default = "1.34"
}

# ── Node Group ────────────────────────────────────────────────────────────────
variable "node_instance_type" {
  description = "EC2 instance type for worker nodes"
  type        = string
  default = "t3.small"

}

variable "node_min_size" {
  description = "Minimum number of worker nodes"
  type        = number
  default = 1

}

variable "node_max_size" {
  description = "Maximum number of worker nodes"
  type        = number
  default = 2
}

variable "node_desired_size" {
  description = "Desired number of worker nodes"
  type        = number
  default = 1
}

# ── ECR ───────────────────────────────────────────────────────────────────────
variable "repository_name" {
  description = "Name of the ECR repository"
  type        = string
  default = "dev-ecr-bks"
}

# ── GitHub ────────────────────────────────────────────────────────────────────
variable "github_org" {
  description = "Your GitHub username or organization"
  type        = string
  default = "Bachhusingh"

}

variable "github_repo" {
  description = "Your GitHub repository name"
  type        = string
  default = "CICD-DEVSEC-END-TO-END-PROJECT"
}

# ── Networking ────────────────────────────────────────────────────────────────
variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}