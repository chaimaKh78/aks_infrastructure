resource "azurerm_kubernetes_cluster_node_pool" "example" {#node ensemble de cluster
  kubernetes_cluster_id        = var.kubernetes_cluster_id#l'id de cluster qui va affecter ce node pool
  name                         = var.name_node#le nom de node pool
  vm_size                      = var.vm_size_node#size de vm
  enable_auto_scaling          = var.enable_auto_scaling#scale le node(ajouter autre noued ayant le meme propriétes en cas de consomations de ressource de noued
  max_pods                     = var.max_pods#nombre de pods maximale par chaque noueds
  max_count                    = var.max_count#max de noeud au cluster
  min_count                    = var.min_count#min de noeud au cluster
  node_count                   = var.node_count#nombre de noued se trouve au cluster par defauts
  mode = var.mode#ce cluster est de mode user pour deploiment des applications de user(es microservices, des applications web, etc.)ou systeme pour deploiment d'éléments du système, tels que des serveurs centraux, des services d'infrastructure,
  zones=var.zones#zones d'affectation de nodes
  os_sku=var.os_sku#reference de systeme d'exploitation (exp linux sku :ubuntu,centos...)
  os_type = var.os_type
  orchestrator_version=var.orchestrator_version#version de orchestrator kubernetes
  os_disk_size_gb =var. os_disk_size_gb#size de disque en gb
}