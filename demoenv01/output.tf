/* output.tf 
Author: DALQUINT - denny.alquinta@oracle.com
Purpose: The following script defines the output for system created
Copyright (c) 2017, 2020, Oracle and/or its affiliates. All rights reserved. 
*/

output "Admin_Compute" {
  description = "Admin Server Compute object"
  value       = module.admin_compute.instance
}

output "Cluster_Compute" {
  description = "Managed Servers Compute object"
  value       = module.managed_compute.instance
}

output "Domain_Name" {
  value = var.wls_domain_name
}

output "Cluster_Name" {
  value = var.wls_cluster_name
}

output "Managed_Servers_Per_Machine" {
  value = var.ms_per_machine
}