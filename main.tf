terraform {
   backend "azurerm" {
  }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
  }
  required_version =">=1.0"
}

provider "azurerm" {
  skip_provider_registration="true"
  features {}
}
data "azurerm_resource_group" "example" {
  name = "azure-test"
}
data "azurerm_client_config" "current" {}


module "réseau_virtuelle" {
  source = "./network"
  resource_group_name = data.azurerm_resource_group.example.name
  address_space = var.address_space
  location = data.azurerm_resource_group.example.location
  vnet_name = var.vnet_name
  network_security_name = var.network_security_name
  public_ip_name        = var.public_ip_name
}

module "node_pool" {
  source = "./node_pool"
  kubernetes_cluster_id = module.cluster_aks.kubernetes_cluster_id
  name_node = var.name_node
  enable_auto_scaling          = var.enable_auto_scaling
  max_pods                     = var.max_pods
  max_count                    = var.max_count
  min_count                    = var.min_count
  node_count                   = var.node_count
  vm_size_node = var.vm_size_node
  mode         = var.mode
  zones        = var.zones
  orchestrator_version = var.orchestrator_version
  os_disk_size_gb = var.os_disk_size_gb
  os_sku = var.os_sku
  os_type= var.os_type
}
module "cluster_aks" {
  source                           = "./aks"
  resource_group_name              = data.azurerm_resource_group.example.name
  location                         = data.azurerm_resource_group.example.location
  default_name_cluster             = var.default_name_cluster
  default_cluster_prefixe_dns      = var.default_cluster_prefixe_dns
  default_kubernetes_version       = var.default_kubernetes_version
  identity_type                    = var.identity_type
  vm_size_default_node_pool        = var.vm_size_default_node_pool
  name_default_node_pool           = var.name_default_node_pool
  azure_aad_managed                = var.azure_aad_managed
  azure_policy                     = var.azure_policy
  azure_rabc_enabled               = var.azure_rabc_enabled
  default_enable_autoScale         = var.default_enable_autoScale
  default_node_count               = var.default_node_count
  default_os_disk_size_gb          = var.default_os_disk_size_gb
  http_application_routing_enabled = var.http_application_routing_enabled
  image_cleaner                    = var.image_cleaner
  image_cleaner_interval_hours     = var.image_cleaner_interval_hours
  oidc_issuer_enabled              = var.oidc_issuer_enabled
  private_dns_zone_id              = var.private_dns_zone_id
  role_based_acces_control_enabled = var.role_based_acces_control_enabled
  sku_tier                         = var.sku_tier
  version_kubernetes_upgarde       = var.version_kubernetes_upgarde
  workload_identity_enabled        = var.workload_identity_enabled
  network_mode                     = var.network_mode
  network_plugin                   = var.network_plugin
  network_policy                   = var.network_policy
  outbound_type                    = var.outbound_type
  default_max_pods                 = var.default_max_pods
}
resource "azurerm_kubernetes_cluster_extension" "flux" {
  cluster_id     = module.cluster_aks.kubernetes_cluster_id
  extension_type = "microsoft.flux"
  name           = "flux-extension"
}
module "node_pool" {
  source = "./node_pool"
  kubernetes_cluster_id = module.cluster_aks.kubernetes_cluster_id
  name_node = var.name_node
  enable_auto_scaling          = var.enable_auto_scaling
  max_pods                     = var.max_pods
  max_count                    = var.max_count
  min_count                    = var.min_count
  node_count                   = var.node_count
  vm_size_node = var.vm_size_node
  mode         = var.mode
  zones        = var.zones
  orchestrator_version = var.orchestrator_version
  os_disk_size_gb = var.os_disk_size_gb
  os_sku = var.os_sku
  os_type= var.os_type
}
module "firewall" {
  source                       = "./modules/firewall"
  name                         = var.firewall_name
  resource_group_name          = data.azurerm_resource_group.example.name
  zones                        = var.firewall_zones
  threat_intel_mode            = var.firewall_threat_intel_mode
  location                     = var.location
  sku_name                     = var.firewall_sku_name 
  sku_tier                     = var.firewall_sku_tier
  pip_name                     = "${var.firewall_name}PublicIp"
  subnet_id                    = module.réseau_virtuelle.subnet_id
}
module "key_vault" {
  source                          = "./modules/key_vault"
  name                            = var.key_vault_name
  location                        = var.location
  resource_group_name             = data.azurerm_resource_group.example.name
  tenant_id                       = data.azurerm_client_config.current.tenant_id
  sku_name                        = var.key_vault_sku_name
  tags                            = var.tags
  enabled_for_deployment          = var.key_vault_enabled_for_deployment
  enabled_for_disk_encryption     = var.key_vault_enabled_for_disk_encryption
  enabled_for_template_deployment = var.key_vault_enabled_for_template_deployment
  enable_rbac_authorization       = var.key_vault_enable_rbac_authorization
  purge_protection_enabled        = var.key_vault_purge_protection_enabled
  soft_delete_retention_days      = var.key_vault_soft_delete_retention_days
  bypass                          = var.key_vault_bypass
  default_action                  = var.key_vault_default_action
}

