FROM alpine:3.19

ENV ARCHIVE_URL="https://github.com/OlafRadicke/olaf-radicke-de/archive/refs/tags/4.0.tar.gz"
ENV ARCHIVE_FORMAT="tar.gz"
ENV ARCHIVE_DIR="olaf-radicke-de-4.0"
ENV ARCHIVE_HUGO_DIR=""
ENV HUGO_BASE_URL="https://olaf-radicke.de"
ENV TARGET_DIR="/tmp/http_docs"

RUN apk add \
    --no-cache \
	  curl \
    bash \
    tar \
    gzip \
    git
RUN apk add \
	--update \
    --no-cache \
	--repository=https://dl-cdn.alpinelinux.org/alpine/edge/community \
	hugo

COPY init_script.sh     /init_script.sh
RUN chmod u+x,g+x,o+x /init_script.sh
RUN adduser \
  -g hugo \
  --disabled-password \
  hugo
RUN mkdir /hugo
RUN chown hugo.hugo /hugo
WORKDIR /hugo
USER hugo
CMD ["/init_script.sh"]