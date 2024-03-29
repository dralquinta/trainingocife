#!/bin/sh
#Author: DALQUINT - denny.alquinta@oracle.com
#Purpose: This script wrapper executes logic for getting output from terraform, then filling both ansible_hosts and playbook.yaml for corresponding role.
#Copyright (c) 2021, Oracle and/or its affiliates. All rights reserved. 

# These variables are sent by Jenkins. Upon last commit must be removed/commented out
export ANSIBLE_WORKSPACE='/home/opc/REPOS/OCIBE/trainingansible'
export TERRAFORM_WORKSPACE='/home/opc/REPOS/OCIFE'
export PIPELINE='trainingocife'
export SYSTEM=$1
export ANSIBLE_BASE_ROLE='orchestrated'
export TERRAFORM_ARTIFACT_WORKSPACE=$TERRAFORM_WORKSPACE/$PIPELINE/$SYSTEM