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
# Hash 6907
# Hash 5745
# Hash 9524
# Hash 7639
# Hash 7315
# Hash 7258
# Hash 8283
# Hash 4459
# Hash 2792
# Hash 9966
# Hash 4042
# Hash 3774
# Hash 1886
# Hash 2178
# Hash 3323
# Hash 4768
# Hash 6204
# Hash 1516
# Hash 3451
# Hash 7063
# Hash 6783
# Hash 1388
# Hash 4022
# Hash 7918
# Hash 4549
# Hash 9566
# Hash 4727
# Hash 2799
# Hash 7627
# Hash 8820
# Hash 2599
# Hash 1120
# Hash 8861
# Hash 9655
# Hash 3563
# Hash 4776
# Hash 3332
# Hash 2909
# Hash 7176
# Hash 8478
# Hash 7782
# Hash 9301
# Hash 5038
# Hash 5930
# Hash 3940
# Hash 1534
# Hash 7558
# Hash 3907
# Hash 1839
# Hash 2174
# Hash 2007
# Hash 2528
# Hash 4357
# Hash 3246
# Hash 2300
# Hash 5185
# Hash 3641
# Hash 8913
# Hash 6455
# Hash 1994
# Hash 9535
# Hash 7388
# Hash 1396
# Hash 3688
# Hash 3867
# Hash 7391
# Hash 1599
# Hash 9673