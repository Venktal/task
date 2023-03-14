#!/bin/bash

while [ -z $appid ]; do
    echo "Enter appid name"
    read appid
done

while [ -z $password ]; do
    echo "Enter password"
    read appid
done

while [ -z $tenant ]; do
    echo "Enter tenant id "
    read password
done

while [ -z $subscription ]; do
    echo "Enter subscription id"
    read subscription
done

while [ -z $vmName ]; do
    echo "Enter vmName name"
    read vmName
done

while [ -z $resourceGroup ]; do
    echo "Enter resourceGroup name"
    read resourceGroup
done

az login --service-principal -u $appid -p $password --tenant $tenant

az ccount set -s $subscription

az vm show --name $vmName --resource-group $resourceGroup --output json
