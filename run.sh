#!/usr/bin/env bash

set -e

docker build -t risdenk/apache-lucene-notebooks .
docker run --rm -p 8888 -v $PWD/notebooks:/home/jovyan/notebooks risdenk/apache-lucene-notebooks

