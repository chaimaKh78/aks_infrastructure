#variable commun cluster et node_pool
zones = ["1"]
#variables node_pool
name_node = "essaie"
enable_auto_scaling          = true
max_pods                     =2
max_count                    = 2
min_count                    = 1
node_count                   = 1
vm_size_node="Standard_A1_v2"
mode = "User"
os_sku="Ubuntu"
os_disk_size_gb=1
orchestrator_version="~>1.27.0"
os_type = "Linux"
#variables cluster
default_name_cluster="essaie"
default_cluster_prefixe_dns="test15"
default_max_pods                 = 30
azure_aad_managed                = false
azure_policy                     = false
azure_rabc_enabled               = false
default_enable_autoScale         = false
default_node_count               = 1
default_os_disk_size_gb          = 1
http_application_routing_enabled = false
image_cleaner                    = false
image_cleaner_interval_hours     = 24
oidc_issuer_enabled              = false
private_dns_zone_id              = "System"
role_based_acces_control_enabled = false
sku_tier                         = "Free"
version_kubernetes_upgarde       = "stable"
#vnet_integration                 = false
workload_identity_enabled        = false
network_mode                     = "bridge"
network_plugin                   = "azure"
network_policy                   = "calico"
outbound_type                    = "loadBalancer"
#les versions possibles de kubernetes de 1.27.0 jusqu'à 1.27.9 et ces la version la plus stables
default_kubernetes_version="~>1.27.0"
#default_cluster_prefixe_dns = "test"
identity_type = "SystemAssigned"#la gestion des accées et l'utilisation de ressource est gére par azure
name_default_node_pool = "test1"
vm_size_default_node_pool = "Standard_A1_v2"
#variables de network
address_space = ["10.0.0.0/16"]
subnets =  [{
  name              = "subnet1"
  address_prefixes = ["10.1.0.0/24"]
}]
vnet_name = "test-vm-vnet"
network_security_name = "nsg"
public_ip_name="nic"