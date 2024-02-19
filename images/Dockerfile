FROM alpine:3.19
RUN apk add \
    --no-cache \
	  curl \
    bash \
    tar \
    gzip
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
