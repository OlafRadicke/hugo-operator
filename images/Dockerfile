FROM alpine:3.19
RUN apk add \
    --no-cache \
	curl
RUN apk add \
	--update \
    --no-cache \
	--repository=https://dl-cdn.alpinelinux.org/alpine/edge/community \
	hugo

COPY init_cript.sh      /init_cript.sh
RUN chmod u+x,g+x,o+x /init_cript.sh
RUN adduser \
  -g hugo \
  --disabled-password \
  hugo
RUN mkdir /hugo
RUN chown hugo.hugo /hugo
WORKDIR /hugo
USER hugo
