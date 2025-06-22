variable "resource_group_name" {
  description = "Nom du groupe de ressources"
  type        = string
}

variable "location" {
  description = "Emplacement du groupe de ressources"
  type        = string
}
variable "name_default_node_pool" {
  description = "nom de node"
  type          = string
}
variable "vm_size_default_node_pool" {
  description = "le size de node"
}
variable "default_name_cluster" {
  description = "nom de cluster"
  type = string
}
variable "default_cluster_prefixe_dns" {
  type = string
}
variable "default_kubernetes_version" {
  type = string
}
variable "identity_type" {
  type = string
}
variable "version_kubernetes_upgarde" {
  type=string
}
variable "default_enable_autoScale" {
  type = bool
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
variable "default_max_pods" {
  type = number
}