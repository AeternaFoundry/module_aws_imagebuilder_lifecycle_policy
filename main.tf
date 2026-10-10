resource "aws_imagebuilder_lifecycle_policy" "imagebuilder_lifecycle_policies" {
  for_each = var.imagebuilder_lifecycle_policies

  execution_role = each.value.execution_role
  name           = each.value.name
  resource_type  = each.value.resource_type
  description    = each.value.description
  region         = each.value.region
  status         = each.value.status
  tags           = each.value.tags

  dynamic "policy_detail" {
    for_each = each.value.policy_detail != null ? each.value.policy_detail : []
    content {
      dynamic "action" {
        for_each = policy_detail.value.action != null ? policy_detail.value.action : []
        content {
          dynamic "include_resources" {
            for_each = action.value.include_resources != null ? action.value.include_resources : []
            content {
              amis       = include_resources.value.amis
              containers = include_resources.value.containers
              snapshots  = include_resources.value.snapshots
            }
          }
          type = action.value.type
        }
      }
      dynamic "exclusion_rules" {
        for_each = policy_detail.value.exclusion_rules != null ? policy_detail.value.exclusion_rules : []
        content {
          dynamic "amis" {
            for_each = exclusion_rules.value.amis != null ? exclusion_rules.value.amis : []
            content {
              is_public = amis.value.is_public
              dynamic "last_launched" {
                for_each = amis.value.last_launched != null ? amis.value.last_launched : []
                content {
                  unit  = last_launched.value.unit
                  value = last_launched.value.value
                }
              }
              regions         = amis.value.regions
              shared_accounts = amis.value.shared_accounts
              tag_map         = amis.value.tag_map
            }
          }
          tag_map = exclusion_rules.value.tag_map
        }
      }
      dynamic "filter" {
        for_each = policy_detail.value.filter != null ? policy_detail.value.filter : []
        content {
          retain_at_least = filter.value.retain_at_least
          type            = filter.value.type
          unit            = filter.value.unit
          value           = filter.value.value
        }
      }
    }
  }

  dynamic "resource_selection" {
    for_each = each.value.resource_selection != null ? each.value.resource_selection : []
    content {
      dynamic "recipe" {
        for_each = resource_selection.value.recipe != null ? resource_selection.value.recipe : []
        content {
          name             = recipe.value.name
          semantic_version = recipe.value.semantic_version
        }
      }
      tag_map = resource_selection.value.tag_map
    }
  }
}

