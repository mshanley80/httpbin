# httpbin2022: HTTP Request & Response Service


A [Kenneth Reitz](hhttp://httpbin.org ) Project.

Updated by [Michael Shanley](https://github.com/mshanley80/httpbin2022)

Updated application requires python3 - 2.x is not supported.

Docker base image is Ubuntu 20.04


Run locally:
```shell
cd httpbin2022 # code root
pip3 install .
python3 -m httpbin2022.core
# override port and hosts defaults with --port <port> --host <host>
# Example:
python3 -m httpbin2022.core --port 8080 --host 0.0.0.0
# If you do not specify a host and/or port, the default to port 5000 and host 0.0.0.0
```
Run in docker:
```sh
docker pull mshanley80/httpbin2022
# run with defaults
docker run -p 80:80 mshanley80/httpbin2022

# run with PORT and/or HOST. This example runs the app on port 8080 inside the container
# and exposes port 80 on your local host
docker run -p 80:8080 -e PORT=8080 -e HOST=0.0.0.0 mshanley80/httpbin2022 

# where -p is docker_port:application_port
# and -e passes environment variables. These are required to change the host and port gunicorn binds to if you don't want the defaults.
# Default PORT is 80, default HOST is 0.0.0.0'
```

###  Helm chart deployment
see [deployments/helm-charts](https://github.com/mshanley80/httpbin2022/tree/master/deployments/helm) for usage details

```shell
helm install [RELEASE_NAME] mshanley80/httpbin2022
```

### Kubernetes deployment
see [deployments/k8s](https://github.com/mshanley80/httpbin2022/tree/master/deployments/k8s) for usage details

```shell
kubectl apply -f https://raw.githubusercontent.com/mshanley80/httpbin2022/master/deployments/k8s/httpbin2022/httpbin2022.yaml
kubectl apply -f https://raw.githubusercontent.com/mshanley80/httpbin2022/master/deployments/k8s/httpbin2022/httpbin2022-ingress.yaml
```

## Deployed at:

- https://hub.docker.com/r/mshanley80/httpbin2022/

- See the original project http://httpbin.org for additional information.

