IMAGE BUILDS
============

HUGO
----

```bash
podman login docker.io
IMAGE_VERSION="0.0.2"
podman build --tag local/hugo:${IMAGE_VERSION} -f ./images/Dockerfile
podman push local/hugo:${IMAGE_VERSION} docker.io/olafradicke/hugo:${IMAGE_VERSION}
```