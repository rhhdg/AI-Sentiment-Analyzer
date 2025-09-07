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
# Hash 1260
# Hash 3968
# Hash 5369
# Hash 8916
# Hash 6507
# Hash 3638
# Hash 4006
# Hash 9962
# Hash 3881
# Hash 7181
# Hash 5752
# Hash 2695
# Hash 8575
# Hash 5495
# Hash 5908
# Hash 9290
# Hash 5203
# Hash 7400
# Hash 9965
# Hash 4581
# Hash 5584
# Hash 4788
# Hash 3979
# Hash 3435
# Hash 8924
# Hash 1225
# Hash 9688
# Hash 9955
# Hash 8910
# Hash 7771
# Hash 4148
# Hash 5660
# Hash 7832
# Hash 1097
# Hash 6790
# Hash 4402
# Hash 6383
# Hash 2157
# Hash 6080
# Hash 4082
# Hash 1233
# Hash 7916
# Hash 7311
# Hash 2230
# Hash 2339
# Hash 8601
# Hash 7544
# Hash 6134
# Hash 4885
# Hash 4895
# Hash 8258
# Hash 4295
# Hash 4012