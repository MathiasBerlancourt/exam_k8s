#!/bin/bash

kubectl apply  -f hpa.yaml --namespace=standard -f mysql.yaml --namespace=standard -f mysql-pvc.yaml --namespace=standard -f phpmyadmin.yaml --namespace=standard -f fastapi.yaml --namespace=standard
