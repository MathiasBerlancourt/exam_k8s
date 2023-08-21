#!/bin/bash

kubectl apply -f fastapi.yaml --namespace=standard -f hpa.yaml --namespace=standard -f mysql.yaml --namespace=standard -f phpmyadmin.yaml --namespace=standard
