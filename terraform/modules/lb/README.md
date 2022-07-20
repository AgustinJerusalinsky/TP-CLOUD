<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.6 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.10.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 4.10.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_alb_listener.http](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/alb_listener) | resource |
| [aws_alb_listener_rule.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/alb_listener_rule) | resource |
| [aws_lb.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb) | resource |
| [aws_lb_target_group.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_target_group) | resource |
| [aws_security_group.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_internal"></a> [internal](#input\_internal) | The internal flag of the resource | `bool` | n/a | yes |
| <a name="input_load_balancer_type"></a> [load\_balancer\_type](#input\_load\_balancer\_type) | Type of the load balancer | `string` | `"application"` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the resource | `string` | n/a | yes |
| <a name="input_sg_egress"></a> [sg\_egress](#input\_sg\_egress) | Egress security group | `list(any)` | `[]` | no |
| <a name="input_sg_ingress"></a> [sg\_ingress](#input\_sg\_ingress) | Ingress security group | `list(any)` | `[]` | no |
| <a name="input_subnet_ids"></a> [subnet\_ids](#input\_subnet\_ids) | IDs of the subnets of the resource | `list(string)` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags to be applied to the service | `map(any)` | <pre>{<br>  "common": {},<br>  "listener_tags": {},<br>  "load_balancer_tags": {},<br>  "security_group_tags": {},<br>  "target_group_tags": {}<br>}</pre> | no |
| <a name="input_target_groups"></a> [target\_groups](#input\_target\_groups) | variables of the target groups of the resource | <pre>list(object({<br>    name              = string,<br>    health_check_path = string,<br>  }))</pre> | n/a | yes |
| <a name="input_vpc_cidr"></a> [vpc\_cidr](#input\_vpc\_cidr) | VPC CIDR | `string` | n/a | yes |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | ID of the VPC of the resource | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_alb_id"></a> [alb\_id](#output\_alb\_id) | Load Balancer Id |
| <a name="output_arn"></a> [arn](#output\_arn) | Load Balancer Arn |
| <a name="output_dns_name"></a> [dns\_name](#output\_dns\_name) | Load Balancer DNS Name |
| <a name="output_listener_arn"></a> [listener\_arn](#output\_listener\_arn) | Listener Arn |
| <a name="output_target_groups"></a> [target\_groups](#output\_target\_groups) | Target Groups |
| <a name="output_zone_id"></a> [zone\_id](#output\_zone\_id) | Load Balancer Zone Id |
<!-- END_TF_DOCS -->