###########
# Defaults
##########
terraform {
  required_version = ">= 0.13"

}

resource "random_pet" "name" {
  prefix = "customer"
  length = 1
}

resource "tfe_organization" "customer-org" {
  name  = random_pet.name.id
  email = "admin@your-company.com"
}

resource "tfe_workspace" "customer-workspace-1" {
  name         = "${random_pet.name.id}-workspace-1"
  organization = tfe_organization.customer-org.name
}

resource "tfe_variable" "AWS_SECRET_ACCESS_KEY" {
  key          = "AWS_SECRET_ACCESS_KEY"
  value        = ""
  sensitive    = true
  category     = "env"
  workspace_id = tfe_workspace.customer-workspace-1.id
  description  = "AWS_SECRET_ACCESS_KEY"
}
resource "tfe_variable" "AWS_SESSION_TOKEN" {
  key          = "AWS_SESSION_TOKEN"
  value        = ""
  sensitive    = true
  category     = "env"
  workspace_id = tfe_workspace.customer-workspace-1.id
  description  = "AWS_SESSION_TOKEN"
}
resource "tfe_variable" "AWS_ACCESS_KEY_ID" {
  key          = "AWS_ACCESS_KEY_ID"
  value        = ""
  category     = "env"
  workspace_id = tfe_workspace.customer-workspace-1.id
  description  = "AWS_ACCESS_KEY_ID"
}

resource "tfe_variable" "ARM_SUBSCRIPTION_ID" {
  key          = "ARM_SUBSCRIPTION_ID"
  value        = ""
  category     = "env"
  workspace_id = tfe_workspace.customer-workspace-1.id
  description  = "ARM_SUBSCRIPTION_ID"
}

resource "tfe_variable" "ARM_CLIENT_ID" {
  key          = "ARM_CLIENT_ID"
  value        = ""
  category     = "env"
  workspace_id = tfe_workspace.customer-workspace-1.id
  description  = "ARM_CLIENT_ID"
}

resource "tfe_variable" "ARM_CLIENT_SECRET" {
  key          = "ARM_CLIENT_SECRET"
  value        = ""
  sensitive    = true
  category     = "env"
  workspace_id = tfe_workspace.customer-workspace-1.id
  description  = "ARM_CLIENT_SECRET"
}

resource "tfe_variable" "ARM_TENANT_ID" {
  key          = "ARM_TENANT_ID"
  value        = ""
  category     = "env"
  workspace_id = tfe_workspace.customer-workspace-1.id
  description  = "ARM_TENANT_ID"
 }

 resource "tfe_variable" "GOOGLE_CREDENTIALS" {
  key          = "GOOGLE_CREDENTIALS"
  value        = file("./")
  sensitive    = true
  category     = "env"
  workspace_id = tfe_workspace.customer-workspace-1.id
  description  = "gcp_credentials"
 }

resource "tfe_variable" "appId" {
  key          = "appId"
  value        = ""
  sensitive    = true
  category     = "terraform"
  workspace_id = tfe_workspace.customer-workspace-1.id
  description  = "appId"
}

resource "tfe_variable" "password" {
  key          = "password"
  value        = ""
  sensitive    = true
  category     = "terraform"
  workspace_id = tfe_workspace.customer-workspace-1.id
  description  = "password"
}

resource "tfe_variable" "aws_region" {
  key          = "aws_region"
  value        = "ap-northeast-1"
  sensitive    = false
  category     = "terraform"
  workspace_id = tfe_workspace.customer-workspace-1.id
  description  = "aws_region"
}

resource "tfe_variable" "location" {
  key          = "location"
  value        = "East US"
  sensitive    = false
  category     = "terraform"
  workspace_id = tfe_workspace.customer-workspace-1.id
  description  = "location"
}

resource "tfe_variable" "gcp_region" {
  key          = "gcp_region"
  value        = "australia-southeast1"
  sensitive    = false
  category     = "terraform"
  workspace_id = tfe_workspace.customer-workspace-1.id
  description  = "gcp_region"
}
resource "tfe_variable" "gcp_zone" {
  key          = "gcp_zone"
  value        = "australia-southeast1-c"
  sensitive    = false
  category     = "terraform"
  workspace_id = tfe_workspace.customer-workspace-1.id
  description  = "gcp_zone"
}
resource "tfe_variable" "gcp_project" {
  key          = "gcp_project"
  value        = "my-gcp-demos"
  sensitive    = false
  category     = "terraform"
  workspace_id = tfe_workspace.customer-workspace-1.id
  description  = "gcp_project"
}

output "user_instructions" {
  value = <<README

 your org name                                    = ${tfe_organization.customer-org.name}
 your workspace for creating your cluster is      = ${tfe_workspace.customer-workspace-1.name}

README
}                 
