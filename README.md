# Helm Post Renderer Examples

This repo contains a few examples of using various tools with helm's `--post-renderer` support.

Each example does the same thing: adds the annotation `com.example.custom: business-unit-1` to the Deployment named `mycluster-enterprise-metrics-admin-api`.

The examples use the grafana/enterprise-metrics helm chart as an example, which you can add like so:

```
helm repo add grafana https://grafana.github.io/helm-charts
```

You can see the output of each using `helm template`:

```
cd <kustomize/jsonnet/ytt>
helm template mycluster grafana/enterprise-metrics --post-renderer "./post-renderer.sh"
```

## Dependencies

* `helm` cli
* For the kustomize example: `kustomize` cli
* For the jsonnet example: `jsonnet` cli and `yq` to convert yaml to/from json
* For the ytt example: `ytt` cli