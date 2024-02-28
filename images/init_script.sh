#!/usr/bin/env bash

set -x
set -u
set -e

export

cd /hugo
curl -L ${ARCHIVE_URL} -o ${ARCHIVE_DIR}.${ARCHIVE_FORMAT}
if  [ "${ARCHIVE_FORMAT}" = "tar.gz" ]
then
	tar -xvzf ${ARCHIVE_DIR}.${ARCHIVE_FORMAT}
elif [ "${ARCHIVE_FORMAT}" = "zip" ]
then
	gzip -d -xvzf ${ARCHIVE_DIR}.${ARCHIVE_FORMAT}
else
	echo "archive format not soupportet"
	exit 1
fi

hugo \
	--noChmod \
	--noTimes \
	--source ${ARCHIVE_DIR}/${ARCHIVE_HUGO_DIR} \
	--baseURL  ${HUGO_BASE_URL} \
	--destination ${TARGET_DIR}