/* variables.tf 
Author: DALQUINT - denny.alquinta@oracle.com
Purpose: The following script declares all variables used in this backend repository
Copyright (c) 2020, Oracle and/or its affiliates. All rights reserved. 
*/

/********** Tenancy and Provider Variables **********/
variable "region" {
  description = "Target region where artifacts are going to be created"
}

variable "tenancy_ocid" {
  description = "OCID of tenancy"
}

variable "user_ocid" {
  description = "User OCID in tenancy. Currently hardcoded to user denny.alquinta@oracle.com"
}

variable "fingerprint" {
  description = "API Key Fingerprint for user_ocid derived from public API Key imported in OCI User config"
}

variable "private_key_path" {
  description = "Contains the API Private key to interact with OCI"
}

/********** Tenancy and Provider Variables **********/
/********** Admin Compute Variables **********/
variable "admin_ssh_public_is_path" {
  description = "Describes if SSH Public Key is located on file or inside code"
  default     = false
}

variable "admin_ssh_private_is_path" {
  description = "Describes if SSH Private Key is located on file or inside code"
  default     = false
}

variable "admin_ssh_public_key" {
  description = "Defines SSH Public Key to be used in order to remotely connect to compute instance"
  type        = string
  default     = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC/C4kSq/rlZ7xbccf/6oNDIhWktNdjLq2Km+sQ5O8tpS7GNDryaqUaKwuHi263HS7pkxIMnuloJj7BZ4/z808C8J+XnPk0qSbQwSQjJQyPSypsly82IuxLjIFlQMLwM/z3RjOgJWjOEBLpyZUnRtgS0K0uNAu5v3SUREAtslYBsjpjN13ZBbiVyuA5nxoUMpGMLDLOOI9Eo77zf4oqQ07//z0W1F5sSt6x3jlHBFBIfZEhZJ/zfcLWwwDqtxQ6BYYysN2YbUfHHL2Rr3hkfhpP240jSg8cFIXis0J29Im44euLWoVsxLOxB0ekdQkeF7OHjfx1l+LWlTiL6X8AfWoX surapocssh"
}

variable "admin_ssh_private_key" {
  description = "Private key to log into machine"
}

variable "admin_compute_availability_domain_list" {
  type        = list(any)
  description = "Defines the availability domain where OCI artifact will be created. This is a numeric value greater than 0"
}

variable "admin_vcn_display_name" {
  description = "Describes the VCN name to perform lookup"
}


variable "admin_num_instances" {
  description = "Amount of instances to create"
  default     = 0
}

variable "admin_label_zs" {
  type        = list(any)
  description = "Auxiliary variable to concatenate with compute number"
  default     = ["0", ""]
}


variable "admin_compute_display_name_base" {
  description = "Defines the compute and hostname Label for created compute"
}

variable "admin_instance_shape" {
  description = "Defines the shape to be used on compute creation"
}

variable "admin_primary_vnic_display_name" {
  description = "Defines the Primary VNIC Display Name"
  default     = "primaryvnic"
}

variable "admin_assign_public_ip_flag" {
  description = "Defines either machine will have or not a Public IP assigned. All Pvt networks this variable must be false"
  default     = false
}

variable "admin_fault_domain_name" {
  description = "Describes the fault domain to be used by machine"
}

variable "admin_instance_image_ocid" {
  description = "Defines the OCID for the OS image to be used on artifact creation. Extract OCID from: https://docs.cloud.oracle.com/iaas/images/ or designated custom image OCID created by packer"
}

variable "admin_private_ip" {
  description = "Describes the private IP required for machine"
  default     = null
}

variable "admin_bkp_policy_boot_volume" {
  description = "Describes the backup policy attached to the boot volume"
  default     = "gold"
}


variable "admin_linux_compute_instance_compartment_name" {
  description = "Defines the compartment name where the infrastructure will be created"
}

variable "admin_linux_compute_network_compartment_name" {
  description = "Defines the compartment where the Network is currently located"
}

variable "admin_is_compute_private" {
  description = "Determines if compute must be created on private subnet"
  default     = true
}

/********** Admin Compute Variables **********/

/********** Admin Disk Variables **********/
variable "admin_disk_amount_of_disks" {
  description = "Amount of equally sized disks"
}

variable "admin_disk_disk_size_in_gb" {
  description = "Size in GB for Product Disk"
}

variable "admin_disk_volume_display_name" {
  description = "Disk display name."
}


variable "admin_disk_backup_policy_level" {
  description = "Backup policy level for ISCSI disks"
}

variable "admin_disk_iscsi_disk_instance_compartment_name" {
  description = "Compartment where disk will be created at"

}

/********** Admin Disk Variables **********/


/********** Managed Disk Variables **********/
variable "managed_disk_amount_of_disks" {
  description = "Amount of equally sized disks"
}

variable "managed_disk_disk_size_in_gb" {
  description = "Size in GB for Product Disk"
}

variable "managed_disk_volume_display_name" {
  description = "Disk display name."
}


variable "managed_disk_backup_policy_level" {
  description = "Backup policy level for ISCSI disks"
}

variable "managed_disk_iscsi_disk_instance_compartment_name" {
  description = "Compartment where disk will be created at"

}

/********** Managed Disk Variables **********/


/********** Managed Compute Variables **********/
variable "managed_ssh_public_is_path" {
  description = "Describes if SSH Public Key is located on file or inside code"
  default     = false
}

variable "managed_ssh_private_is_path" {
  description = "Describes if SSH Private Key is located on file or inside code"
  default     = false
}

variable "managed_ssh_public_key" {
  description = "Defines SSH Public Key to be used in order to remotely connect to compute instance"
  type        = string
  default     = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC/C4kSq/rlZ7xbccf/6oNDIhWktNdjLq2Km+sQ5O8tpS7GNDryaqUaKwuHi263HS7pkxIMnuloJj7BZ4/z808C8J+XnPk0qSbQwSQjJQyPSypsly82IuxLjIFlQMLwM/z3RjOgJWjOEBLpyZUnRtgS0K0uNAu5v3SUREAtslYBsjpjN13ZBbiVyuA5nxoUMpGMLDLOOI9Eo77zf4oqQ07//z0W1F5sSt6x3jlHBFBIfZEhZJ/zfcLWwwDqtxQ6BYYysN2YbUfHHL2Rr3hkfhpP240jSg8cFIXis0J29Im44euLWoVsxLOxB0ekdQkeF7OHjfx1l+LWlTiL6X8AfWoX surapocssh"
}

variable "managed_ssh_private_key" {
  description = "Private key to log into machine"
}

variable "managed_compute_availability_domain_list" {
  type        = list(any)
  description = "Defines the availability domain where OCI artifact will be created. This is a numeric value greater than 0"
}

variable "managed_vcn_display_name" {
  description = "Describes the VCN name to perform lookup"
}

variable "managed_num_instances" {
  description = "Amount of instances to create"
  default     = 0
}

variable "managed_label_zs" {
  type        = list(any)
  description = "Auxiliary variable to concatenate with compute number"
  default     = ["0", ""]
}


variable "managed_compute_display_name_base" {
  description = "Defines the compute and hostname Label for created compute"
}

variable "managed_instance_shape" {
  description = "Defines the shape to be used on compute creation"
}

variable "managed_primary_vnic_display_name" {
  description = "Defines the Primary VNIC Display Name"
  default     = "primaryvnic"
}

variable "managed_assign_public_ip_flag" {
  description = "Defines either machine will have or not a Public IP assigned. All Pvt networks this variable must be false"
  default     = false
}

variable "managed_fault_domain_name" {
  description = "Describes the fault domain to be used by machine"
}

variable "managed_instance_image_ocid" {
  description = "Defines the OCID for the OS image to be used on artifact creation. Extract OCID from: https://docs.cloud.oracle.com/iaas/images/ or designated custom image OCID created by packer"
}

variable "managed_private_ip" {
  description = "Describes the private IP required for machine"
  default     = null
}

variable "managed_bkp_policy_boot_volume" {
  description = "Describes the backup policy attached to the boot volume"
  default     = "gold"
}


variable "managed_linux_compute_instance_compartment_name" {
  description = "Defines the compartment name where the infrastructure will be created"
}

variable "managed_linux_compute_network_compartment_name" {
  description = "Defines the compartment where the Network is currently located"
}

variable "managed_is_compute_private" {
  description = "Determines if compute must be created on private subnet"
  default     = true
}

/********** Managed Compute Variables **********/

/********** Datasource and Subnet Lookup related variables **********/

variable "public_network_subnet_name" {
  description = "Defines the specific Subnet to be used for this resource"
}

variable "private_network_subnet_name" {
  description = "Defines the specific Subnet to be used for this resource"
}

/********** Datasource related variables **********/


/********** WLS Specific Configuration for Output **********/

variable "wls_domain_name" {
  description = "Describes the domain name to be later integrated with ansible"
  default     = "base_domain"
}

variable "wls_cluster_name" {
  description = "Describes the name of the single cluster to be integrated with ansible"
  default     = "wls_cluster"
}

variable "ms_per_machine" {
  description = "Defines the amount of managed servers to be provisioned per machine in cluster"
  default     = 1
}

/********** WLS Specific Configuration for Output **********/