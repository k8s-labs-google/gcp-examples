# Kustomize

Kustomize _is NOT_ a templating engine (like Helm), and that's why I love it so much. With Helm you end up with a DSL (values files) that you constantly have to render to make sense of the templates. It can get nearly impossible to tell what's going on and I believe this adds too much complexity.

Enter Kustomize. It's a way to declaratively describe resources (like k8s), and to inherit and override values to describe different envs, or overlays.

The GitHub repo is [here](https://github.com/kubernetes-sigs/kustomize).

## Using Kustomize

`kustomize build app1`

See how the app1 kustomizzation file only overrides values specific to the app. This way you can share a lot of the same yaml (deployments, services, backends) and only override what is app-specific.
