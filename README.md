# httpbin2022: HTTP Request & Response Service


A [Kenneth Reitz](hhttp://httpbin.org ) Project.

Updated by [Michael Shanley](https://github.com/mshanley80/httpbin)


Run locally:
```shell
cd to httpbin2022 code root
pip3 install .
python3 -m httpbin2022/core.py --port <port> --host <host>
Example:
python3 -m httpbin2022/core.py --port 8080 --host 0.0.0.0
If you do not specify a host and/or port, they default to port 5000 and host 0.0.0.0
```
Run in docker:
```sh
docker pull mshanley80/httpbin2022
docker run -p 80:80 -e PORT=8080 -e HOST=0.0.0.0 mshanley80/httpbin2022 
where -p is docker_port:application_port
and -e passes environment variables. These are required to change the host and port gunicorn binds to if you don't want the defaults.
Default PORT is 80, default HOST is 0.0.0.0'
```

- Helm chart deployment - see deployments/helm-charts
- Kubernetes deployment - see deployments/k8s

## Deployed at:

- https://hub.docker.com/r/mshanley80/httpbin/

- See the original project http://httpbin.org for more information.

## SEE ALSO

- https://github.com/mshanley80/httpbin
