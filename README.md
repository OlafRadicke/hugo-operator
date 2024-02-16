hugo-operator
=============



PUSH OPERATOR (IMAGE)
---------------------

```bash
make podman-build podman-push  VERSION="0.0.2"
```

IMAGE PULL TEST
---------------

```
podman rmi  -a
podman pull docker.io/olafradicke/hugo-operator:0.0.1
```