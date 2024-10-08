variable "aws_region" {
  description = "AWS Region"
  type        = string
  default     = "af-south-1"
}

variable "environment_name" {
  description = "The name of Environment Infrastructure stack, feel free to rename it. Used for cluster and VPC names."
  type        = string
  default     = "mnaka-dev"
}

variable "ingress_type" {
  type        = string
  description = "Type of ingress to uses (alb | nginx | ...). this parameter will be sent to argocd via gitops bridge"
  default     = "alb"
}

variable "hosted_zone_name" {
  type        = string
  description = "Route53 domain for the cluster."
  default     = "felidaen.co"
}

variable "eks_admin_role_name" {
  type        = string
  description = "Additional IAM role to be admin in the cluster"
  default     = "Admin"
}

variable "aws_secret_manager_git_private_ssh_key_name" {
  type        = string
  description = "Secret Manager secret name for hosting Github SSH-Key to Access private repository"
  default     = "github-blueprint-ssh-key"
}

variable "argocd_secret_manager_name_suffix" {
  type        = string
  description = "Name of secret manager secret for ArgoCD Admin UI Password"
  default     = "argocd-admin-secret"
}

variable "gitops_addons_org" {
  type        = string
  description = "Git repository org/user contains for addons"
  default     = "https://github.com/mninawa"
}
variable "gitops_addons_repo" {
  type        = string
  description = "Git repository contains for addons"
  default     = "mnaka-workloads"
}
variable "gitops_addons_basepath" {
  type        = string
  description = "Git repository base path for addons"
  default     = "blueprints-add-ons/argocd/"
}
variable "gitops_addons_path" {
  type        = string
  description = "Git repository path for addons"
  default     = "blueprints-add-ons/argocd/bootstrap/control-plane/addons"
}
variable "gitops_addons_revision" {
  type        = string
  description = "Git repository revision/branch/ref for addons"
  default     = "HEAD"
}

variable "gitops_workloads_org" {
  type        = string
  description = "Git repository org/user contains for workloads"
  default     = "https://github.com/mninawa"
}

variable "gitops_workloads_repo" {
  type        = string
  description = "Git repository contains for workloads"
  default     = "mnaka-workloads"
}

variable "gitops_workloads_path" {
  type        = string
  description = "Git repo path in workload_repo_url for the ArgoCD workload deployment"
  default     = "envs/dev"
}

variable "gitops_workloads_revision" {
  type        = string
  description = "Git repo revision in gitops_workloads_url  for the ArgoCD workload deployment"
  default     = "main"
}

variable "service_name" {
  description = "The name of the Suffix for the stack name"
  type        = string
  default     = "blue"
}

variable "cluster_version" {
  description = "The Version of Kubernetes to deploy"
  type        = string
  default     = "1.27"
}

variable "argocd_route53_weight" {
  description = "The Route53 weighted records weight for argocd application"
  type        = string
  default     = "100"
}

variable "ecsfrontend_route53_weight" {
  description = "The Route53 weighted records weight for ecsdemo-frontend application"
  type        = string
  default     = "100"
}

variable "route53_weight" {
  description = "The Route53 weighted records weight for others application"
  type        = string
  default     = "100"
}
