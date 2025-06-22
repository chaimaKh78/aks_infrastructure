variable "name_node" {
  description = "(Required) Specifies the name of the node pool."
  type        = string
}

variable "kubernetes_cluster_id" {
  description = "(Required) Specifies the resource id of the AKS cluster."
  type        = string
}

variable "vm_size_node" {
  description = "(Required) The SKU which should be used for the Virtual Machines used in this Node Pool. Changing this forces a new resource to be created."
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
  default       = 250
}
#variable "tags" {
#  description = "Specifies the tags of the network security group"
#  default     = {}
#}
variable "max_count" {
  description = "The maximum number of nodes which should exist within this Node Pool. Valid values are between 0 and 1000 and must be greater than or equal to min_count."
  type          = number
  default       = 10
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
