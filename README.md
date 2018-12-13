# Wrk Docker image

[![Docker Automated build](https://img.shields.io/docker/automated/ruslanys/wrk.svg?style=flat-square&colorB=007EC6)](https://hub.docker.com/r/ruslanys/wrk/)
[![Docker Build Status](https://img.shields.io/docker/build/ruslanys/wrk.svg?style=flat-square&colorB=007EC6)](https://hub.docker.com/r/ruslanys/wrk/)
[![Docker Pulls](https://img.shields.io/docker/pulls/ruslanys/wrk.svg?style=flat-square&colorB=007EC6)](https://hub.docker.com/r/ruslanys/wrk/)


## Usage

```
$ docker run --rm ruslanys/wrk wrk -t12 -c400 -d30s --latency http://www.ru
```
