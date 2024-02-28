FROM alpine:3.19

ENV ARCHIVE_URL=""
ENV ARCHIVE_FORMAT=""
ENV ARCHIVE_DIR=""
ENV ARCHIVE_HUGO_DIR=""
ENV HUGO_BASE_URL=""
ENV TARGET_DIR=""

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