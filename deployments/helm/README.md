
# HTTPBin2022 helm chart

Important: only helm3 is supported


## Add helm repository for httpbin2022

```shell
helm repo add mshanley80 https://mshanley80.github.io/helm-charts/
```


## Install Chart

The command deploys httpbin2022 with default configuration.
```shell
helm install [RELEASE_NAME] mshanley80/httpbin2022
```

See configuration options below.



## Uninstall Chart
This removes all associated with the chart and deletes the release.
```shell
helm uninstall [RELEASE_NAME]
```

## Configuration options

| name     | description | default |
|----------| ----- | ----- |
| env.PORT | Port to bind gunicorn to | 80 |
| env.HOST | Host to bind gunicorn to | 0.0.0.0 |

## Usage examples

### Default install
```shell
helm install httpbin2022 mshanley80/httpbin2022
```

### Customize host and port bindings for gunicorn
You can edit values.yaml and edit the env section, or pass set arguments.
```shell
helm install httpbin2022 mshanley80/httpbin2022 \
  --set env.PORT=8080 \
  --set env.HOST=10.0.2.15
```

### Deploy with ingress
You can run this as a script to deploy an ingress controller, httpbin2022, and ingress
```shell
# deploy ingress controller
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/main/deploy/static/provider/kind/deploy.yaml
# wait for this to finish before proceeding
kubectl -n ingress-nginx rollout status deployment/ingress-nginx-controller
helm install httpbin2022 mshanley80/httpbin2022

```