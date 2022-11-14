# CircleCI Context Environment Variables Terraform Module
Create contexts with environment variables all-in-one

## Usage

**provider.tf**

```hcl
terraform {
  required_providers {
    circleci = {
      source  = "mrolla/circleci"
      version = "0.6.1"
    }
  }
}

provider "circleci" {
  organization = "your-org"
  api_token    = "${file("circleci_token")}"
  vcs_type     = "github"
}
```

**main.tf**

```hcl
module "context" {
  source      = "caherrera/contexts/circleci"
  version     = "0.1.1"
  context     = "my-custom-context-by-${terraform.workspace}"
  environment = {
    FOO = "BAR"
  }
}
```

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_circleci"></a> [circleci](#requirement\_circleci) | 0.6.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_circleci"></a> [circleci](#provider\_circleci) | 0.6.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [circleci_context.this](https://registry.terraform.io/providers/mrolla/circleci/0.6.1/docs/resources/context) | resource |
| [circleci_context_environment_variable.var](https://registry.terraform.io/providers/mrolla/circleci/0.6.1/docs/resources/context_environment_variable) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_context"></a> [context](#input\_context) | Context's name | `string` | n/a | yes |
| <a name="input_environment"></a> [environment](#input\_environment) | Key Value set of variables | `object({})` | n/a | yes |

## Outputs

No outputs.
