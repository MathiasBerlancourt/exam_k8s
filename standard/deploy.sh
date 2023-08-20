#!/bin/bash

kubectl apply -f fastapi.yaml -f hpa.yaml -f mysql.yaml -f phpmyadmin.yaml --namespace=standard
