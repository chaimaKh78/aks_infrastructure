resource "azurerm_kubernetes_cluster" "test_aks1"{
  name                = var.default_name_cluster#non au ce cluster
  location            = var.location#au quelle region va situé ce cluster
  resource_group_name =var.resource_group_name#sous quelle conteneur logique azure je veux créer ce resource
  private_cluster_enabled=true#pour raison de securite je veux que mon cluster etre privé ne sera exposé qu'à des adresses IP internes
  private_cluster_public_fqdn_enabled=false#dans le cas de cluster privé il y a plusier methode d'exposé au internet et les parmis avec le fqdn
  dns_prefix=var.default_cluster_prefixe_dns
  kubernetes_version = var.default_kubernetes_version#version de kuberntes
  automatic_channel_upgrade =var.version_kubernetes_upgarde
  image_cleaner_enabled = var.image_cleaner
  private_dns_zone_id = var.private_dns_zone_id
  sku_tier = var.sku_tier
  azure_policy_enabled = var.azure_policy
  http_application_routing_enabled = var.http_application_routing_enabled
  image_cleaner_interval_hours = var.image_cleaner_interval_hours
  default_node_pool {
    name    = var.name_default_node_pool
    vm_size = var.vm_size_default_node_pool
    node_count=var.default_node_count
    os_disk_size_gb=var.default_os_disk_size_gb
    enable_auto_scaling = var.default_enable_autoScale#ajouter de node au cas de consomations de tout réseaux
    max_pods = var.default_max_pods

  }

  identity {#permets le cluster d'accés au autre ressource azure
    type = var.identity_type#dans le cas =systeme
  }
  #authentification par rbac et azure aad
    azure_active_directory_role_based_access_control {
      managed = var.azure_aad_managed
      azure_rbac_enabled = var.azure_rabc_enabled
    }
  oidc_issuer_enabled = var.oidc_issuer_enabled
  role_based_access_control_enabled = var.role_based_acces_control_enabled
  workload_identity_enabled = var.workload_identity_enabled
  #pas de mise à jours
  lifecycle {
    ignore_changes = [
      kubernetes_version
    ]
  }

  network_profile {
    network_plugin = var.network_plugin
    network_mode = var.network_mode
    network_policy = var.network_policy
    outbound_type = var.outbound_type
  }

}



