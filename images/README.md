IMAGE BUILDS
============

HUGO
----

To build and push image enter:

```bash
podman login docker.io
IMAGE_VERSION="0.0.6"
podman build --tag local/hugo:${IMAGE_VERSION} -f ./images/Dockerfile
podman push local/hugo:${IMAGE_VERSION} docker.io/olafradicke/hugo:${IMAGE_VERSION}
```

To test image local enter:

```bash
podman run -it local/hugo:${IMAGE_VERSION} ./init_script.sh
```