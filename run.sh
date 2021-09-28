gcloud beta container hub config-management enable

gcloud container hub memberships register release-k8s \
  --gke-cluster=us-central1-c/release-k8s \
  --enable-workload-identity

gcloud beta container hub config-management apply \
  --membership=release-k8s \
  --config=release-k8s-apply-spec.yaml \
  --project=kenthua-test-standalone
