#!/bin/bash

kubectl apply  -f hpa.yaml --namespace=standard -f mysql.yaml --namespace=standard -f phpmyadmin.yaml --namespace=standard -f fastapi.yaml --namespace=standard -f ingress.yaml --namespace=standard clusterissuer.yaml --namespace=standard
