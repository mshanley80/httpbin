
# Kubernetes deployment of httpbin2022

## Default deploy
The default deployment runs httpbin2022 bound to port 80 in the container.
This also creates an ingress on port 80.

```shell
kubectl apply -f httpbin2022.yaml
kubectl apply -f httpbin2022-ingress.yaml
```

You can reference these files directly without downloading them if desired.
```shell
kubectl apply -f https://raw.githubusercontent.com/mshanley80/httpbin2022/master/deployments/k8s/httpbin2022/httpbin2022.yaml
kubectl apply -f https://raw.githubusercontent.com/mshanley80/httpbin2022/master/deployments/k8s/httpbin2022/httpbin2022-ingress.yaml
```

## Override port and host values
You can override the port and host bindings for gunicorn, which is what is running inside the container.
This block in the deployment yaml is what does the override:
```yaml
        env:
        # This tells httpbin to run on 8080 in the container
        - name: PORT
          value: "8080"
        # This tells httpbin bind to 0.0.0.0 in the container.
        # This is the default binding, but is shown here just for an example.
        - name: HOST
          value: "0.0.0.0"
```

To deploy with httpbin2022 service running on port 8080 inside the container. Ingress is still port 80.

```shell
kubectl apply -f https://raw.githubusercontent.com/mshanley80/httpbin2022/master/deployments/k8s/httpbin2022/httpbin2022-port8080.yaml
kubectl apply -f https://raw.githubusercontent.com/mshanley80/httpbin2022/master/deployments/k8s/httpbin2022/httpbin2022-port8080-ingress.yaml
```