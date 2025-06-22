variable "default_name_cluster" {
  description = "nom de cluster"
  type = string
}
variable "default_cluster_prefixe_dns" {
  type = string
}
variable "identity_type" {
  type = string
}
variable "name_default_node_pool" {
  description = "nom de node"
  type          = string
}
variable "vm_size_default_node_pool" {
  description = "le size de node"
}
variable "version_kubernetes_upgarde" {
  type=string
}
variable "default_enable_autoScale" {
  type = bool
}
variable "default_max_pods" {
  type = number
}
variable "default_os_disk_size_gb" {
  type= number
}
variable "default_node_count" {
  type = number
}
variable "sku_tier" {
  type = string
}

variable "private_dns_zone_id" {
  type = string
}
variable "oidc_issuer_enabled" {
  type = bool
}
variable "image_cleaner" {
  type = bool
}
variable "image_cleaner_interval_hours" {
  type = number
}
variable "http_application_routing_enabled" {
  type = bool
}
variable "azure_policy" {
  type = bool
}
variable "role_based_acces_control_enabled" {
  type = bool
}
variable "workload_identity_enabled" {
  type = bool
}
variable "azure_rabc_enabled" {
  type = bool
}
variable "azure_aad_managed" {
  type = bool
}
variable "default_kubernetes_version" {
  type = string
}
#variables de node pool
variable "name_node" {
  description = "Specifies the name of the node pool."
  type        = string
}

variable "vm_size_node" {
  description = "The SKU which should be used for the Virtual Machines used in this Node Pool. Changing this forces a new resource to be created."
  type        = string
}

variable "enable_auto_scaling" {
  description = "Whether to enable auto-scaler"
  type          = bool
  default       = false
}
variable "max_pods" {
  description = "The maximum number of pods that can run on each agent. Changing this forces a new resource to be created."
  type          = number
}

variable "max_count" {
  description = "The maximum number of nodes which should exist within this Node Pool. Valid values are between 0 and 1000 and must be greater than or equal to min_count."
  type          = number

}

variable "min_count" {
  description = "The minimum number of nodes which should exist within this Node Pool. Valid values are between 0 and 1000 and must be less than or equal to max_count."
  type          = number
  default       = 3
}

variable "node_count" {
  description = "The initial number of nodes which should exist within this Node Pool. Valid values are between 0 and 1000 and must be a value in the range min_count - max_count."
  type          = number
  default       = 3
}
variable "zones" {
  type = set(string)
}
variable "mode" {
  type = string
}
variable "os_sku" {
  type = string
}
variable "orchestrator_version" {
  type = string
}
variable "os_disk_size_gb" {
  type = number
}
variable "os_type" {
  type = string
}
variable "outbound_type" {
  type = string
}
variable "network_policy" {
  type = string
}
variable "network_mode" {
  type = string
}
variable "network_plugin" {
  type = string
}

#les variables de network

variable "vnet_name" {
  description = "VNET name"
  type        = string
}

variable "address_space" {
  description = "VNET address space"
  type        = list(string)
}

variable "subnets" {
  description = "Subnets configuration"
  type = list(object({
    name                                           = string
    address_prefixes                               = list(string)
  }))
}
variable "public_ip_name" {
  type        = string
}
variable "network_security_name" {
  type        = string
}


