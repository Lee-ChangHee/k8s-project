#!/bin/sh

export RESOURCE_GROUP=docker_group
export CLUSTER_NAME=petclinic-aks
export LOCATION=koreacentral

az aks create \
    --resource-group $RESOURCE_GROUP \
    --name $CLUSTER_NAME \
    --node-count 2 \
    --enable-addons http_application_routing \
    --generate-ssh-keys \
    --node-vm-size Standard_B2s \
    --network-plugin azure

az aks get-credentials --name $CLUSTER_NAME --resource-group $RESOURCE_GROUP