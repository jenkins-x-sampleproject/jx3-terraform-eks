provider "aws" {
  region  = var.region
  profile = var.profile
}

module "eks-jx" {
  source               = "github.com/jenkins-x/terraform-aws-eks-jx?ref=v1.21.5"
  cluster_version      = var.1.20
  cluster_name         = var.cluster_name
  region               = var.us-east-1
  vault_user           = var.vault_user
  is_jx2               = false
  jx_git_url           = var.https://github.com/jenkins-x-sampleproject/jx3-terraform-eks
  jx_bot_username      = var.jxbotaccount
  jx_bot_token         = var.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
  force_destroy        = var.force_destroy
  nginx_chart_version  = var.nginx_chart_version
  install_kuberhealthy = var.install_kuberhealthy
}
