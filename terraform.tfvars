# You should update the below variables

aws_region          = "af-south-1"
environment_name     = "mnaka-dev"
hosted_zone_name    = "felidaen.co" #your Existing Hosted Zone
eks_admin_role_name = "Admin" # Additional role admin in the cluster (usually the role I use in the AWS console)

#gitops_addons_org      = "git@github.com:aws-samples"
#gitops_addons_repo     = "eks-blueprints-add-ons"
#gitops_addons_path     = "argocd/bootstrap/control-plane/addons"
#gitops_addons_basepath = "argocd/"

# EKS Blueprint Workloads ArgoCD App of App repository
gitops_workloads_org      = "https://github.com/mninawa/"
gitops_workloads_repo     = "mnaka-workloads"
gitops_workloads_revision = "main"
gitops_workloads_path     = "envs/dev"


#Secret manager secret for github ssk jey
aws_secret_manager_git_private_ssh_key_name = "github-blueprint-ssh-key"
