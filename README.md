# httpbin2022: HTTP Request & Response Service


A [Kenneth Reitz](hhttp://httpbin.org ) Project.

Updated by [Michael Shanley](https://github.com/mshanley80/httpbin)


Run locally:
```shell
cd to httpbin code root
pip3 install .
python3 httpbin/core.py --port <port> --host <host>
Example:
python3 httpbin/core.py --port 8080 --host 0.0.0.0
```
Run in docker:
```sh
docker pull mshanley80/httpbin
docker run -p 80:80 mshanley80/httpbin 
where -p is docker_port:application_port
```

- Helm chart deployment - see deployments/helm-charts
- Kubernetes deployment - see deployments/k8s

## Deployed at:

- https://hub.docker.com/r/mshanley80/httpbin/

- See the original project http://httpbin.org for more information.

## SEE ALSO

- https://github.com/mshanley80/httpbin
