#!/bin/bash

NAMESPACE="standard"

# Tableau contenant les types de ressources à supprimer
RESOURCE_TYPES=("deployment" "statefulset" "service" "pod" "ingress")

# Boucle pour supprimer chaque type de ressource
for RESOURCE_TYPE in "${RESOURCE_TYPES[@]}"; do
    kubectl delete "$RESOURCE_TYPE" --all -n "$NAMESPACE"
done

kubectl delete pvc --all -n "$NAMESPACE"

echo "Cleanup completed in namespace $NAMESPACE."

