<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.6 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.10.0 |
| <a name="requirement_docker"></a> [docker](#requirement\_docker) | 2.16.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 4.10.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_internal_alb"></a> [internal\_alb](#module\_internal\_alb) | ../lb | n/a |
| <a name="module_internal_alb_dns"></a> [internal\_alb\_dns](#module\_internal\_alb\_dns) | ../route_53 | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_cloudwatch_log_group.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_log_group) | resource |
| [aws_ecr_lifecycle_policy.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecr_lifecycle_policy) | resource |
| [aws_ecr_repository.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecr_repository) | resource |
| [aws_ecs_cluster.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecs_cluster) | resource |
| [aws_ecs_cluster_capacity_providers.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecs_cluster_capacity_providers) | resource |
| [aws_ecs_service.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecs_service) | resource |
| [aws_ecs_task_definition.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecs_task_definition) | resource |
| [aws_security_group.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_caller_identity.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |
| [aws_region.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/region) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_auth_domain"></a> [auth\_domain](#input\_auth\_domain) | value of the auth domain | `string` | n/a | yes |
| <a name="input_client_id"></a> [client\_id](#input\_client\_id) | value of the client id | `string` | n/a | yes |
| <a name="input_client_secret"></a> [client\_secret](#input\_client\_secret) | value of the client secret | `string` | n/a | yes |
| <a name="input_cluster_tags"></a> [cluster\_tags](#input\_cluster\_tags) | Tags to be applied to the cluster | `map(string)` | `{}` | no |
| <a name="input_container_cpu"></a> [container\_cpu](#input\_container\_cpu) | CPUs to be allocated to the container | `string` | n/a | yes |
| <a name="input_container_memory"></a> [container\_memory](#input\_container\_memory) | Memory to be allocated to the container | `string` | n/a | yes |
| <a name="input_execution_role_arn"></a> [execution\_role\_arn](#input\_execution\_role\_arn) | ARN of the execution role | `string` | n/a | yes |
| <a name="input_health_check_path"></a> [health\_check\_path](#input\_health\_check\_path) | Path to be used for health check | `string` | n/a | yes |
| <a name="input_logs_region"></a> [logs\_region](#input\_logs\_region) | AWS region for logs | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Name of the service | `string` | n/a | yes |
| <a name="input_private_alb_tags"></a> [private\_alb\_tags](#input\_private\_alb\_tags) | Tags to be applied to the ALB | <pre>object({<br>    listener_tags       = map(string),<br>    target_group_tags   = map(string),<br>    load_balancer_tags  = map(string),<br>    security_group_tags = map(string),<br>    tags                = map(string),<br>  })</pre> | <pre>{<br>  "listener_tags": {},<br>  "load_balancer_tags": {},<br>  "security_group_tags": {},<br>  "tags": {},<br>  "target_group_tags": {}<br>}</pre> | no |
| <a name="input_private_key"></a> [private\_key](#input\_private\_key) | value of the private key | `string` | n/a | yes |
| <a name="input_private_subnet_ids"></a> [private\_subnet\_ids](#input\_private\_subnet\_ids) | Subnets ids to be used for the service | `list(any)` | n/a | yes |
| <a name="input_public_subnet_ids"></a> [public\_subnet\_ids](#input\_public\_subnet\_ids) | Subnets ids to be used for the service | `list(any)` | n/a | yes |
| <a name="input_redirect_uri"></a> [redirect\_uri](#input\_redirect\_uri) | value of the redirect uri | `string` | n/a | yes |
| <a name="input_security_group_tags"></a> [security\_group\_tags](#input\_security\_group\_tags) | Tags to be applied to the security group | `map(string)` | `{}` | no |
| <a name="input_services"></a> [services](#input\_services) | Name of the service | <pre>map(object({<br>    name          = string<br>    image         = string<br>    location      = string<br>    replicas      = number<br>    containerPort = number<br>  }))</pre> | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags to be applied to the service | `map(string)` | `{}` | no |
| <a name="input_task_definition_tags"></a> [task\_definition\_tags](#input\_task\_definition\_tags) | Tags to be applied to the task definition | `map(string)` | `{}` | no |
| <a name="input_task_role_arn"></a> [task\_role\_arn](#input\_task\_role\_arn) | ARN of the task role | `string` | n/a | yes |
| <a name="input_vpc_cidr"></a> [vpc\_cidr](#input\_vpc\_cidr) | VPC CIDR | `string` | n/a | yes |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | VPC ID | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_alb_arn"></a> [alb\_arn](#output\_alb\_arn) | n/a |
| <a name="output_alb_id"></a> [alb\_id](#output\_alb\_id) | n/a |
| <a name="output_alb_listener_arn"></a> [alb\_listener\_arn](#output\_alb\_listener\_arn) | n/a |
| <a name="output_security_group_id"></a> [security\_group\_id](#output\_security\_group\_id) | -------------------------------------------------------------------- ECS output -------------------------------------------------------------------- |
<!-- END_TF_DOCS -->