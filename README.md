hugo-operator
=============

PRE REQUEST
-----------

For pushing operator:

```
podman login docker.io
```


PUSH OPERATOR (IMAGE)
---------------------

```bash
make podman-build podman-push VERSION="0.0.18"
```

CREATE OPERATOR INSTALL YAML
----------------------------

```bash
make dist-deploy VERSION="0.0.16"
```

This creates the fiele `hugo-dist-deploy.yaml`

IMAGE PULL TEST
---------------

```
podman rmi  -a
podman pull docker.io/olafradicke/hugo-operator:0.0.X
```