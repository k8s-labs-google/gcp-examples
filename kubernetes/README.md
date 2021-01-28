# Kubernetes

## cluster config

+ workload identity - [docs](https://cloud.google.com/kubernetes-engine/docs/how-to/workload-identity)
+ google groups for RBAC - [docs](https://cloud.google.com/kubernetes-engine/docs/how-to/role-based-access-control#google-groups-for-gke)
+ vertical pod autoscaler
  + don't use auto mode (GKE resizing pods in runtime is no-bueno)
  + but enable the VPA to see what it suggests, with auto mode off it will print out suggestions.

+ mutating / validating webhooks OSS
  + list a few useful ones (not needed)

## application config

+ resource requests and limits
+ Graceful termination - [blog](https://cloud.google.com/blog/products/gcp/kubernetes-best-practices-terminating-with-grace) [example](https://cloud.google.com/solutions/running-web-applications-on-gke-using-cost-optimized-pvms-and-traffic-director)


## For image scanner, container security.

https://neuvector.com/


