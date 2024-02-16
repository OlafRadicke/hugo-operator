#!/usr/bin/env bash

-x
-u
-e


cd /hugo
hugo \
	--source ./hugo \
	--baseURL  https://olafradicke.github.io/hugo \
	--destination ../docs