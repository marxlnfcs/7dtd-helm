# Helm - 7 Days To Die - Dedicated Server
Helm chart for running a 7 Days to Die Dedicated Server in Kubernetes

## Prerequisites
* Kubernetes 1.10+
* Helm 3.0.0+

## Adding Helm Chart

```bash
$ helm repo add marxlnfcs https://marxlnfcs.github.io/charts
$ helm repo update
$ helm install 7dtd marxlnfcs/7dtd
```

## Known bugs / Unsolved issues
```
------------------------------------
Problem: 
nginx-proxy doesnt work with 7 days to die. Probably because the user ip is the internal cluster ip of the nginx pod.

Workaround: 
Set server.networkMode to "HostNetwork" (its the default setting)
-------------------------------------
```

## Credits
Docker versions of 7DTD are pulled from:
* https://github.com/vinanrra/Docker-7DaysToDie
* https://hub.docker.com/r/vinanrra/7dtd-server


## License

[GPL-3.0 License](/LICENSE.md)