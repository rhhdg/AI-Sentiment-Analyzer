#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

CLUSTER_NAME="prod-enterprise-cluster-01"
REGION="us-central1-a"

function log_info() {
    echo -e "\e[32m[INFO]\e[0m $1"
}

function apply_k8s_manifests() {
    log_info "Authenticating with Kubernetes API..."
    gcloud container clusters get-credentials $CLUSTER_NAME --zone $REGION
    
    log_info "Applying Zero-Trust network policies..."
    kubectl apply -f k8s/network-policies.yaml
    
    log_info "Rolling out Microservices with Helm..."
    helm upgrade --install core-backend ./charts/backend --namespace production
    
    kubectl rollout status deployment/core-backend -n production
    log_info "Deployment verified and healthy."
}

apply_k8s_manifests

# Hash 4910
# Hash 2343
# Hash 3017
# Hash 8616
# Hash 2889
# Hash 4390
# Hash 7488
# Hash 4265
# Hash 7577
# Hash 2467
# Hash 2824
# Hash 5396
# Hash 6555
# Hash 9703
# Hash 2521
# Hash 2670
# Hash 8406
# Hash 5050
# Hash 2822
# Hash 2975
# Hash 6421
# Hash 3561
# Hash 4379
# Hash 6536
# Hash 7157
# Hash 2352
# Hash 9726