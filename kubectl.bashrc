kube_ctl_get() {
    context="$1"
    namespace="$2"
    resource_type="$3"
    kubectl get "$resource_type" --context "$context" --namespace "$namespace"
}

# get pods production
kgpp() {
    kube_ctl_get prd prod pods
}

# get pods staging
kgps() {
    kube_ctl_get stg prod pods
}

kube_ctl_logs() {
    context="$1"
    namespace="$2"
    pod="$3"
    kubectl logs "$pod" --context "$context" --namespace "$namespace"
}

# logs production
klp() {
    pod="$1"
    kube_ctl_logs prd prod "$pod"
}

# logs staging
kls() {
    pod="$1"
    kube_ctl_logs stg prod "$pod"
}

kube_ctl_describe() {
    context="$1"
    namespace="$2"
    resource_type="$3"
    resource_name="$4"
    kubectl describe "$resource_type" "$resource_name" --context "$context" --namespace "$namespace"
}

# describe pod production
kdpp() {
    pod="$1"
    kube_ctl_describe prd prod pod "$pod"
}

# describe pod staging
kdps() {
    pod="$1"
    kube_ctl_describe stg prod pod "$pod"
}

# production context
kp() {
    args=( "$@" )
    kubectl --context prd "${args[@]}"
}

# staging context
ks() {
    args=( "$@" )
    kubectl --context stg "${args[@]}"
}

# development context
kd() {
    args=( "$@" )
    kubectl --context dev "${args[@]}"
}

# list all images
kube_ctl_list_all_images() {
    context="$1"
    namespace="$2"
    kubectl get pods --context "$context" --namespace "$namespace" \
        -o jsonpath="{.items[*].spec.containers[*].image}" |\
        tr -s '[[:space:]]' '\n' |\
        sort |\
        uniq -c
}

# list all images production
klip() {
    kube_ctl_list_all_images prd prod
}

# list all images staging
klis() {
    kube_ctl_list_all_images stg prod
}
