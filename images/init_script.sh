#!/usr/bin/env bash

set -x
set -u
set -e


GIT_URL="https://github.com/OlafRadicke/the-independent-friend-static/archive/refs/tags"
GIT_TAG="4.6.2"
GIT_FORMAT="tar.gz"
GIT_PATH="the-independent-friend-static-${GIT_TAG}"

cd /hugo
curl -L ${GIT_URL}/${GIT_TAG}.${GIT_FORMAT} -o ${GIT_PATH}.${GIT_FORMAT}
tar -xvzf ${GIT_PATH}.${GIT_FORMAT}
hugo \
	--source ${GIT_PATH}/hugo \
	--baseURL  https://olafradicke.github.io/hugo \
	--destination ../docs