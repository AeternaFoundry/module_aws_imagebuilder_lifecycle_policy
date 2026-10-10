output "imagebuilder_lifecycle_policies_id" {
  description = "Map of id values across all imagebuilder_lifecycle_policies, keyed the same as var.imagebuilder_lifecycle_policies"
  value       = { for k, v in aws_imagebuilder_lifecycle_policy.imagebuilder_lifecycle_policies : k => v.id if v.id != null && length(v.id) > 0 }
}
output "imagebuilder_lifecycle_policies_arn" {
  description = "Map of arn values across all imagebuilder_lifecycle_policies, keyed the same as var.imagebuilder_lifecycle_policies"
  value       = { for k, v in aws_imagebuilder_lifecycle_policy.imagebuilder_lifecycle_policies : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "imagebuilder_lifecycle_policies_description" {
  description = "Map of description values across all imagebuilder_lifecycle_policies, keyed the same as var.imagebuilder_lifecycle_policies"
  value       = { for k, v in aws_imagebuilder_lifecycle_policy.imagebuilder_lifecycle_policies : k => v.description if v.description != null && length(v.description) > 0 }
}
output "imagebuilder_lifecycle_policies_execution_role" {
  description = "Map of execution_role values across all imagebuilder_lifecycle_policies, keyed the same as var.imagebuilder_lifecycle_policies"
  value       = { for k, v in aws_imagebuilder_lifecycle_policy.imagebuilder_lifecycle_policies : k => v.execution_role if v.execution_role != null && length(v.execution_role) > 0 }
}
output "imagebuilder_lifecycle_policies_name" {
  description = "Map of name values across all imagebuilder_lifecycle_policies, keyed the same as var.imagebuilder_lifecycle_policies"
  value       = { for k, v in aws_imagebuilder_lifecycle_policy.imagebuilder_lifecycle_policies : k => v.name if v.name != null && length(v.name) > 0 }
}
output "imagebuilder_lifecycle_policies_policy_detail" {
  description = "Map of policy_detail values across all imagebuilder_lifecycle_policies, keyed the same as var.imagebuilder_lifecycle_policies"
  value       = { for k, v in aws_imagebuilder_lifecycle_policy.imagebuilder_lifecycle_policies : k => v.policy_detail if v.policy_detail != null && length(v.policy_detail) > 0 }
}
output "imagebuilder_lifecycle_policies_region" {
  description = "Map of region values across all imagebuilder_lifecycle_policies, keyed the same as var.imagebuilder_lifecycle_policies"
  value       = { for k, v in aws_imagebuilder_lifecycle_policy.imagebuilder_lifecycle_policies : k => v.region if v.region != null && length(v.region) > 0 }
}
output "imagebuilder_lifecycle_policies_resource_selection" {
  description = "Map of resource_selection values across all imagebuilder_lifecycle_policies, keyed the same as var.imagebuilder_lifecycle_policies"
  value       = { for k, v in aws_imagebuilder_lifecycle_policy.imagebuilder_lifecycle_policies : k => v.resource_selection if v.resource_selection != null && length(v.resource_selection) > 0 }
}
output "imagebuilder_lifecycle_policies_resource_type" {
  description = "Map of resource_type values across all imagebuilder_lifecycle_policies, keyed the same as var.imagebuilder_lifecycle_policies"
  value       = { for k, v in aws_imagebuilder_lifecycle_policy.imagebuilder_lifecycle_policies : k => v.resource_type if v.resource_type != null && length(v.resource_type) > 0 }
}
output "imagebuilder_lifecycle_policies_status" {
  description = "Map of status values across all imagebuilder_lifecycle_policies, keyed the same as var.imagebuilder_lifecycle_policies"
  value       = { for k, v in aws_imagebuilder_lifecycle_policy.imagebuilder_lifecycle_policies : k => v.status if v.status != null && length(v.status) > 0 }
}
output "imagebuilder_lifecycle_policies_tags" {
  description = "Map of tags values across all imagebuilder_lifecycle_policies, keyed the same as var.imagebuilder_lifecycle_policies"
  value       = { for k, v in aws_imagebuilder_lifecycle_policy.imagebuilder_lifecycle_policies : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "imagebuilder_lifecycle_policies_tags_all" {
  description = "Map of tags_all values across all imagebuilder_lifecycle_policies, keyed the same as var.imagebuilder_lifecycle_policies"
  value       = { for k, v in aws_imagebuilder_lifecycle_policy.imagebuilder_lifecycle_policies : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}

