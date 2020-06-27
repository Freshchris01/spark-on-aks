#!/bin/bash
RESOURCE_GROUP="your resource group"
AKS_CLUSTER_NAME="AKS Cluster Name"

az aks nodepool add \
    --resource-group $RESOURCE_GROUP \
    --cluster-name $AKS_CLUSTER_NAME \
    --name dedicated \
    --enable-cluster-autoscaler \
    --min-count 3 \
    --max-count 3 \
    -s Standard_D8s_v3 \
    --no-wait