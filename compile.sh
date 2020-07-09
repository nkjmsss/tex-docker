#!/bin/sh

docker run --rm -v "$(pwd):/workdir" paperist/alpine-texlive-ja latexmk $1
