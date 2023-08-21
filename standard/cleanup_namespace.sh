#!/bin/bash

NAMESPACE="standard"


kubectl delete deployment --all -n $NAMESPACE

kubectl delete statefulset --all -n $NAMESPACE


kubectl delete service --all -n $NAMESPACE


kubectl delete pods --all -n $NAMESPACE

echo "Cleanup completed in namespace $NAMESPACE."