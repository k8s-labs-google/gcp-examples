# Terraform

When creating GCP resources with Terraform, the Cloud Foundations Toolkit is a collection of libraries built by Google that abstract best practices for common resources.

[List](https://github.com/GoogleCloudPlatform/cloud-foundation-toolkit/blob/master/docs/terraform.md) of all templates.

[GKE priuvate cluster](https://github.com/terraform-google-modules/terraform-google-kubernetes-engine/tree/master/modules/private-cluster-update-variant)

## GKE features

These are features I now always turn on when using GKE.

+ config sync - [docs](https://cloud.google.com/kubernetes-engine/docs/add-on/config-sync/overview) - [terraform](https://github.com/terraform-google-modules/terraform-google-kubernetes-engine/tree/master/modules/config-sync)
  + config sync connects to a git repository and keeps GKE yaml in-sync across 1-n clusters. I use this to set up "cluster primatives" that aren't app resources. Some examples include, Prometheus, RBAC, and logging config.
+ workload identity - [docs](https://cloud.google.com/kubernetes-engine/docs/how-to/workload-identity)
  + workload identity makes it so we don't have to put GCP service account _keys_ onto the GKE cluster. It's now the recommended way to authenticate w/ GCP APIs from a GKE cluster.
+ gsuite groups for RBAC - [docs](https://cloud.google.com/kubernetes-engine/docs/how-to/role-based-access-control#google-groups-for-gke)
  + when using workload identity, the available subjects for role bindings are service accounts and people.
  + this makes it hard to manage teams, assigning RBAC to a group makes this much easier
