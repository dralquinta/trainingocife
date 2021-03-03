/* backend.tf
Author: DALQUINT - denny.alquinta@oracle.com
Purpose: Handles the storage of tfstate file in backend bucket
Copyright (c) 2017, 2021, Oracle and/or its affiliates. All rights reserved. */

terraform {
  backend "s3" {
    bucket   = "tfstate_bucket"
    key      = "Environments/demoenv01.tfstate"
    region   = "us-ashburn-1"
    endpoint = "https://acscloudengineering.compat.objectstorage.us-ashburn-1.oraclecloud.com"

    skip_region_validation      = true
    skip_credentials_validation = true
    skip_metadata_api_check     = true
    force_path_style            = true
  }
}