variable "imagebuilder_lifecycle_policies" {
  description = <<EOT
Map of imagebuilder_lifecycle_policies, attributes below
Required:
    - execution_role
    - name
    - resource_type
Optional:
    - description
    - region
    - status
    - tags
    - policy_detail (block):
        - action (optional, block):
            - include_resources (optional, block):
                - amis (optional)
                - containers (optional)
                - snapshots (optional)
            - type (required)
        - exclusion_rules (optional, block):
            - amis (optional, block):
                - is_public (optional)
                - last_launched (optional, block):
                    - unit (required)
                    - value (required)
                - regions (optional)
                - shared_accounts (optional)
                - tag_map (optional)
            - tag_map (optional)
        - filter (optional, block):
            - retain_at_least (optional)
            - type (required)
            - unit (optional)
            - value (required)
    - resource_selection (block):
        - recipe (optional, block):
            - name (required)
            - semantic_version (required)
        - tag_map (optional)
EOT

  type = map(object({
    execution_role = string
    name           = string
    resource_type  = string
    description    = optional(string)
    region         = optional(string)
    status         = optional(string)
    tags           = optional(map(string))
    policy_detail = optional(list(object({
      action = optional(list(object({
        include_resources = optional(list(object({
          amis       = optional(bool)
          containers = optional(bool)
          snapshots  = optional(bool)
        })))
        type = string
      })))
      exclusion_rules = optional(list(object({
        amis = optional(list(object({
          is_public = optional(bool)
          last_launched = optional(list(object({
            unit  = string
            value = number
          })))
          regions         = optional(list(string))
          shared_accounts = optional(list(string))
          tag_map         = optional(map(string))
        })))
        tag_map = optional(map(string))
      })))
      filter = optional(list(object({
        retain_at_least = optional(number)
        type            = string
        unit            = optional(string)
        value           = number
      })))
    })))
    resource_selection = optional(list(object({
      recipe = optional(list(object({
        name             = string
        semantic_version = string
      })))
      tag_map = optional(map(string))
    })))
  }))
}

