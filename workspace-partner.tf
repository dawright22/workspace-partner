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
  value        = "jiBiOW2PFm/hGIDu+5cQ4Ni5JwrDbXdZewBtAyus"
  sensitive    = true
  category     = "env"
  workspace_id = tfe_workspace.customer-workspace-1.id
  description  = "AWS_SECRET_ACCESS_KEY"
}
resource "tfe_variable" "AWS_SESSION_TOKEN" {
  key          = "AWS_SESSION_TOKEN"
  value        = "IQoJb3JpZ2luX2VjEOH//////////wEaCXVzLWVhc3QtMSJGMEQCIEqYlgM4eaNOQkhsPP3yb5ipgSeWhks/ETVC7FDI5Zf6AiAjo/qh7yq2s0D/Q1lyc9eHvQZCdhqNOIFGp3GtAqqLyCrSAgjK//////////8BEAEaDDcxMTEyOTM3NTY4OCIMgSLEQmMvkiJde5pYKqYCNO5j2ec4bqD8oPVNjJbims6j4hDtU5OyKmO278ZRjytDkNRvMX5W8+qsqHYDbrSRFjaBpOZ/fj2bIJblj/bYvQYDEwhlUr1mXTbnIfCG78xHzUOOzqxD5IXbAcR2nVxRGP3m1No6hZt/es+jRVqqRlTLNtMqwO1ZblCXAqpIT8ZzrQyLaKSB+qLjc2g7TCxElT/EkbhmYwHrtH0apCyZtZaEPFg5vaVTNGnIyZcQaQTVoB7N9JOTnEDIIsSm1wsIdRJ1LgTfohBGhqwWq7tfX3Bmop2YzBs7XhGr+3zjhaWlBkH0fhX3lSTXeCqjq++wu07DBaFsKau+frTPQBF5MQpy/3c5K4yXzxkJQn9gVhrv6KojPHvdCV0amIXuxAGGtluial7BMJrG4oAGOp4BCzywSnw7isl9ZSVNQMe6kf0zakThP0LBnHXuH8o650snUg/EU1gyPZwnzcY0yut4LcVhdXSk7rEiRTDcEm6w4wGKK/NIOAJiGzBRKCCNWZIoOPfsJX57mvRwvxaBCpCKifVMXHtVzf/uTB3DwUqYsRzkKBOV9QrNI540FfoL1B6O2yMI35eDRHxQCEKEcmLNP+5GcI8cnsIyBtlk+Dw="
  sensitive    = true
  category     = "env"
  workspace_id = tfe_workspace.customer-workspace-1.id
  description  = "AWS_SESSION_TOKEN"
}
resource "tfe_variable" "AWS_ACCESS_KEY_ID" {
  key          = "AWS_ACCESS_KEY_ID"
  value        = "ASIA2LEU5EPEOEDUSHI3"
  category     = "env"
  workspace_id = tfe_workspace.customer-workspace-1.id
  description  = "AWS_ACCESS_KEY_ID"
}

resource "tfe_variable" "ARM_SUBSCRIPTION_ID" {
  key          = "ARM_SUBSCRIPTION_ID"
  value        = "14692f20-9428-451b-8298-102ed4e39c2a"
  category     = "env"
  workspace_id = tfe_workspace.customer-workspace-1.id
  description  = "ARM_SUBSCRIPTION_ID"
}

resource "tfe_variable" "ARM_CLIENT_ID" {
  key          = "ARM_CLIENT_ID"
  value        = "805ad921-13d9-4087-b5ec-72de04747b9c"
  category     = "env"
  workspace_id = tfe_workspace.customer-workspace-1.id
  description  = "ARM_CLIENT_ID"
}

resource "tfe_variable" "ARM_CLIENT_SECRET" {
  key          = "ARM_CLIENT_SECRET"
  value        = "?fB7w0BJRDmRsZCbayIIzB0VFC-@qd0:"
  sensitive    = true
  category     = "env"
  workspace_id = tfe_workspace.customer-workspace-1.id
  description  = "ARM_CLIENT_SECRET"
}

resource "tfe_variable" "ARM_TENANT_ID" {
  key          = "ARM_TENANT_ID"
  value        = "0e3e2e88-8caf-41ca-b4da-e3b33b6c52ec"
  category     = "env"
  workspace_id = tfe_workspace.customer-workspace-1.id
  description  = "ARM_TENANT_ID"
 }

 resource "tfe_variable" "GOOGLE_CREDENTIALS" {
  key          = "GOOGLE_CREDENTIALS"
  value        = file("/Users/dawg/personal/gcp/gcp-creds.json")
  sensitive    = true
  category     = "env"
  workspace_id = tfe_workspace.customer-workspace-1.id
  description  = "gcp_credentials"
 }

resource "tfe_variable" "appId" {
  key          = "appId"
  value        = "05419517-31a2-48e0-bb47-89924dc8c0d3"
  sensitive    = true
  category     = "terraform"
  workspace_id = tfe_workspace.customer-workspace-1.id
  description  = "appId"
}

resource "tfe_variable" "password" {
  key          = "password"
  value        = "wm-6c1Gg4SxY8tmLB59mQbZss1d84_.mvW"
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
  value        = "dwright-gcp-demos"
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