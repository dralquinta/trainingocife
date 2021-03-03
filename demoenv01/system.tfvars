/* system.tfvars
Author: DALQUINT - denny.alquinta@oracle.com
Purpose: The following script defines the system particular variables to provision environment
Copyright (c) 2017, 2020, Oracle and/or its affiliates. All rights reserved. 
*/
##### DOMAIN INTEGRATION VARIABLES #####
wls_domain_name  = "asistencia247"
wls_cluster_name = "asistencia247_cluster"
ms_per_machine   = 2

##### ADMIN COMPUTE MODULE VARIABLES #####
admin_ssh_public_key                          = "./ssh_keys/auto_ssh_id_rsa.pub"
admin_ssh_private_key                         = "./ssh_keys/auto_ssh_id_rsa"
admin_ssh_public_is_path                      = true
admin_ssh_private_is_path                     = true
admin_compute_availability_domain_list        = ["vzAG:US-ASHBURN-AD-1", "vzAG:US-ASHBURN-AD-2", "vzAG:US-ASHBURN-AD-3"]
admin_fault_domain_name                       = ""
admin_bkp_policy_boot_volume                  = "bronze"
admin_linux_compute_instance_compartment_name = "OCI-LAB-04"
admin_linux_compute_network_compartment_name  = "OCI-LAB-04"
admin_vcn_display_name                        = "vcn_oci_iac"
admin_num_instances                           = 1
admin_compute_display_name_base               = "admin"
admin_instance_image_ocid                     = "ocid1.image.oc1.iad.aaaaaaaaqdc7jslbtue7abhwvxaq3ihvazfvihhs2rwk2mvciv36v7ux5sda" #Oracle-Linux-7.9-2021.01.12-0
admin_instance_shape                          = "VM.Standard2.1"
admin_is_compute_private                      = true


##### ADMIN COMPUTE ISCSI DISKS VARIABLES #####

admin_disk_amount_of_disks                      = 1
admin_disk_disk_size_in_gb                      = "50"
admin_disk_iscsi_disk_instance_compartment_name = "OCI-LAB-04"
admin_disk_volume_display_name                  = "disk_admin"
admin_disk_backup_policy_level                  = "bronze"



##### MANAGED COMPUTE MODULE VARIABLES #####
managed_ssh_public_key                          = "./ssh_keys/auto_ssh_id_rsa.pub"
managed_ssh_private_key                         = "./ssh_keys/auto_ssh_id_rsa"
managed_ssh_public_is_path                      = true
managed_ssh_private_is_path                     = true
managed_compute_availability_domain_list        = ["vzAG:US-ASHBURN-AD-1", "vzAG:US-ASHBURN-AD-2", "vzAG:US-ASHBURN-AD-3"]
managed_fault_domain_name                       = ""
managed_bkp_policy_boot_volume                  = "gold"
managed_linux_compute_instance_compartment_name = "OCI-LAB-04"
managed_linux_compute_network_compartment_name  = "OCI-LAB-04"
managed_vcn_display_name                        = "vcn_oci_iac"
managed_num_instances                           = 1
managed_compute_display_name_base               = "managed"
managed_instance_image_ocid                     = "ocid1.image.oc1.iad.aaaaaaaaqdc7jslbtue7abhwvxaq3ihvazfvihhs2rwk2mvciv36v7ux5sda" #Oracle-Linux-7.9-2021.01.12-0
managed_instance_shape                          = "VM.Standard2.1"
managed_is_compute_private                      = true

##### MANAGED COMPUTE ISCSI DISKS VARIABLES #####

managed_disk_amount_of_disks                      = 1
managed_disk_disk_size_in_gb                      = "50"
managed_disk_iscsi_disk_instance_compartment_name = "OCI-LAB-04"
managed_disk_volume_display_name                  = "disk_managed"
managed_disk_backup_policy_level                  = "gold"

