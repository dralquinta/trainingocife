/* main.tf
Author: Denny Alquinta – denny.alquinta@oracle.com 
Purpose: Defines all the components related to environment
Copyright (c) 2017, 2020, Oracle and/or its affiliates. All rights reserved. */

module "admin_compute" {
  source = "git::https://github.com/dralquinta/trainingcompute.git?ref=v1.0"
  ######################################## COMMON VARIABLES ######################################
  region                      = var.region
  user_ocid                   = var.user_ocid
  tenancy_ocid                = var.tenancy_ocid
  fingerprint                 = var.fingerprint
  private_key_path            = var.private_key_path
  public_network_subnet_name  = var.public_network_subnet_name
  private_network_subnet_name = var.private_network_subnet_name
  ######################################## COMMON VARIABLES ######################################
  ######################################## ARTIFACT SPECIFIC VARIABLES ######################################
  ssh_public_key                          = var.admin_ssh_public_key
  ssh_private_key                         = var.admin_ssh_private_key
  ssh_public_is_path                      = var.admin_ssh_public_is_path
  ssh_private_is_path                     = var.admin_ssh_private_is_path
  compute_availability_domain_list        = var.admin_compute_availability_domain_list
  fault_domain_name                       = var.admin_fault_domain_name
  bkp_policy_boot_volume                  = var.admin_bkp_policy_boot_volume
  linux_compute_instance_compartment_name = var.admin_linux_compute_instance_compartment_name
  linux_compute_network_compartment_name  = var.admin_linux_compute_network_compartment_name
  vcn_display_name                        = var.admin_vcn_display_name
  num_instances                           = var.admin_num_instances
  compute_display_name_base               = var.admin_compute_display_name_base
  instance_image_ocid                     = var.admin_instance_image_ocid
  instance_shape                          = var.admin_instance_shape
  is_compute_private                      = var.admin_is_compute_private
}

module "admin_iscsi_disks" {
  depends_on = [module.admin_compute]
  source     = "git::https://github.com/dralquinta/trainingicscidisk.git?ref=DEV_Disk_Mounting"
  count      = length(module.admin_compute.instance.*.id)
  ######################################## COMMON VARIABLES ######################################
  region           = var.region
  user_ocid        = var.user_ocid
  tenancy_ocid     = var.tenancy_ocid
  fingerprint      = var.fingerprint
  private_key_path = var.private_key_path
  ######################################## COMMON VARIABLES ######################################
  ######################################## ARTIFACT SPECIFIC VARIABLES ######################################

  ssh_private_key                      = var.admin_disk_ssh_private_key
  amount_of_disks                      = var.admin_disk_amount_of_disks
  disk_size_in_gb                      = var.admin_disk_disk_size_in_gb
  iscsi_disk_instance_compartment_name = var.admin_disk_iscsi_disk_instance_compartment_name
  volume_display_name                  = var.admin_disk_volume_display_name
  backup_policy_level                  = var.admin_disk_backup_policy_level
  linux_compute_id                     = module.admin_compute.instance[count.index].id
  compute_display_name                 = module.admin_compute.instance[count.index].display_name
  availability_domain                  = module.admin_compute.instance[count.index].availability_domain
  linux_compute_private_ip             = module.admin_compute.instance[count.index].private_ip

}

module "managed_compute" {
  source = "git::https://github.com/dralquinta/trainingcompute.git?ref=v1.0"
  ######################################## COMMON VARIABLES ######################################
  region                      = var.region
  user_ocid                   = var.user_ocid
  tenancy_ocid                = var.tenancy_ocid
  fingerprint                 = var.fingerprint
  private_key_path            = var.private_key_path
  public_network_subnet_name  = var.public_network_subnet_name
  private_network_subnet_name = var.private_network_subnet_name
  ######################################## COMMON VARIABLES ######################################
  ######################################## ARTIFACT SPECIFIC VARIABLES ######################################
  ssh_public_key                          = var.managed_ssh_public_key
  ssh_private_key                         = var.managed_ssh_private_key
  ssh_public_is_path                      = var.managed_ssh_public_is_path
  ssh_private_is_path                     = var.managed_ssh_private_is_path
  compute_availability_domain_list        = var.managed_compute_availability_domain_list
  fault_domain_name                       = var.managed_fault_domain_name
  bkp_policy_boot_volume                  = var.managed_bkp_policy_boot_volume
  linux_compute_instance_compartment_name = var.managed_linux_compute_instance_compartment_name
  linux_compute_network_compartment_name  = var.managed_linux_compute_network_compartment_name
  vcn_display_name                        = var.managed_vcn_display_name
  num_instances                           = var.managed_num_instances
  compute_display_name_base               = var.managed_compute_display_name_base
  instance_image_ocid                     = var.managed_instance_image_ocid
  instance_shape                          = var.managed_instance_shape
  is_compute_private                      = var.managed_is_compute_private
}

module "managed_iscsi_disks" {
  depends_on = [module.managed_compute]
  source     = "git::https://github.com/dralquinta/trainingicscidisk.git?ref=DEV_Disk_Mounting"
  count      = length(module.managed_compute.instance.*.id)
  ######################################## COMMON VARIABLES ######################################
  region           = var.region
  user_ocid        = var.user_ocid
  tenancy_ocid     = var.tenancy_ocid
  fingerprint      = var.fingerprint
  private_key_path = var.private_key_path
  ######################################## COMMON VARIABLES ######################################
  ######################################## ARTIFACT SPECIFIC VARIABLES ######################################
  ssh_private_key                      = var.managed_disk_ssh_private_key
  amount_of_disks                      = var.managed_disk_amount_of_disks
  disk_size_in_gb                      = var.managed_disk_disk_size_in_gb
  iscsi_disk_instance_compartment_name = var.managed_disk_iscsi_disk_instance_compartment_name
  volume_display_name                  = var.managed_disk_volume_display_name
  backup_policy_level                  = var.managed_disk_backup_policy_level
  linux_compute_id                     = module.managed_compute.instance[count.index].id
  compute_display_name                 = module.managed_compute.instance[count.index].display_name
  availability_domain                  = module.managed_compute.instance[count.index].availability_domain
  linux_compute_private_ip             = module.managed_compute.instance[count.index].private_ip

}