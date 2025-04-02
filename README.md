<!-- markdownlint-disable -->
<<<<<<< Updated upstream
<a href="https://www.appvia.io/"><img src="https://github.com/appvia/terraform-aws-anomaly-detection/blob/main/appvia_banner.jpg?raw=true" alt="Appvia Banner"/></a><br/><p align="right"> <a href="https://registry.terraform.io/modules/appvia/anomaly-detection/aws/latest"><img src="https://img.shields.io/static/v1?label=APPVIA&message=Terraform%20Registry&color=191970&style=for-the-badge" alt="Terraform Registry"/></a></a> <a href="https://github.com/appvia/terraform-aws-anomaly-detection/releases/latest"><img src="https://img.shields.io/github/release/appvia/terraform-aws-anomaly-detection.svg?style=for-the-badge&color=006400" alt="Latest Release"/></a> <a href="https://appvia-community.slack.com/join/shared_invite/zt-1s7i7xy85-T155drryqU56emm09ojMVA#/shared-invite/email"><img src="https://img.shields.io/badge/Slack-Join%20Community-purple?style=for-the-badge&logo=slack" alt="Slack Community"/></a> <a href="https://github.com/appvia/terraform-aws-anomaly-detection/graphs/contributors"><img src="https://img.shields.io/github/contributors/appvia/terraform-aws-anomaly-detection.svg?style=for-the-badge&color=FF8C00" alt="Contributors"/></a>
=======

<a href="https://www.appvia.io/"><img src="./docs/banner.jpg" alt="Appvia Banner"/></a><br/><p align="right"> <a href="https://registry.terraform.io/modules/appvia/anomaly-detection/aws/latest"><img src="https://img.shields.io/static/v1?label=APPVIA&message=Terraform%20Registry&color=191970&style=for-the-badge" alt="Terraform Registry"/></a></a> <a href="https://github.com/appvia/terraform-aws-anomaly-detection/releases/latest"><img src="https://img.shields.io/github/release/appvia/terraform-aws-anomaly-detection.svg?style=for-the-badge&color=006400" alt="Latest Release"/></a> <a href="https://appvia-community.slack.com/join/shared_invite/zt-1s7i7xy85-T155drryqU56emm09ojMVA#/shared-invite/email"><img src="https://img.shields.io/badge/Slack-Join%20Community-purple?style=for-the-badge&logo=slack" alt="Slack Community"/></a> <a href="https://github.com/appvia/terraform-aws-anomaly-detection/graphs/contributors"><img src="https://img.shields.io/github/contributors/appvia/terraform-aws-anomaly-detection.svg?style=for-the-badge&color=FF8C00" alt="Contributors"/></a>
>>>>>>> Stashed changes

<!-- markdownlint-restore -->
<!--
  ***** CAUTION: DO NOT EDIT ABOVE THIS LINE ******
-->

![Github Actions](https://github.com/appvia/terraform-aws-anomaly-detection/actions/workflows/terraform.yml/badge.svg)

# Terraform AWS Cost Anomaly Detection

## Description

The purpose of this module is convenience wrapper for provisioning one or more Cost Anomaly monitors and setting up the notifications for them.

## Usage

Add example usage here

```hcl
module "cost_anomaly_detection" {
  source = "../../"

  monitors      = local.monitors
  sns_topic_arn = var.sns_topic_arn
  tags          = var.tags
}
}
```

## Update Documentation

The `terraform-docs` utility is used to generate this README. Follow the below steps to update:

1. Make changes to the `.terraform-docs.yml` file
2. Fetch the `terraform-docs` binary (https://terraform-docs.io/user-guide/installation/)
3. Run `terraform-docs markdown table --output-file ${PWD}/README.md --output-mode inject .`

<!-- BEGIN_TF_DOCS -->
## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 5.0.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_monitors"></a> [monitors](#input\_monitors) | A collection of cost anomaly monitors to create | <pre>list(object({<br/>    name = string<br/>    # The name of the monitor<br/>    monitor_type = optional(string, "DIMENSIONAL")<br/>    # The type of monitor to create<br/>    monitor_dimension = optional(string, "DIMENSIONAL")<br/>    # The dimension to monitor<br/>    monitor_specification = optional(string, null)<br/>    # The specification to monitor<br/>    notify = optional(object({<br/>      frequency = string<br/>      # The frequency of notifications<br/>      threshold_expression = optional(any, null)<br/>      # The threshold expression to use for notifications<br/>      }), {<br/>      frequency = "DAILY"<br/>    })<br/>  }))</pre> | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of tags to add to all resources | `map(string)` | n/a | yes |
| <a name="input_sns_topic_arn"></a> [sns\_topic\_arn](#input\_sns\_topic\_arn) | The ARN of an existing SNS topic for notifications | `string` | `null` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
