# wrk Docker image

[![Docker Automated build](https://img.shields.io/docker/automated/ruslanys/wrk.svg?style=flat-square&colorB=007EC6)](https://hub.docker.com/r/ruslanys/wrk/)
[![Docker Build Status](https://img.shields.io/docker/build/ruslanys/wrk.svg?style=flat-square&colorB=007EC6)](https://hub.docker.com/r/ruslanys/wrk/)
[![Docker Pulls](https://img.shields.io/docker/pulls/ruslanys/wrk.svg?style=flat-square&colorB=007EC6)](https://hub.docker.com/r/ruslanys/wrk/)


## Usage

```
$ docker run --rm -it ruslanys/wrk -t12 -c400 -d10s https://hub.docker.com/
```

## Images

* Alpine: `ruslanys/wrk:alpine`
* Ubuntu: `ruslanys/wrk:ubuntu`

## wrk - a HTTP benchmarking tool

wrk is a modern HTTP benchmarking tool capable of generating significant
load when run on a single multi-core CPU. It combines a multithreaded
design with scalable event notification systems such as epoll and kqueue.

### Basic Usage

```
wrk -t12 -c400 -d30s http://127.0.0.1:8080/index.html
```

This runs a benchmark for 30 seconds, using 12 threads, and keeping
400 HTTP connections open.

Output:

```
Running 30s test @ http://127.0.0.1:8080/index.html
  12 threads and 400 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency   635.91us    0.89ms  12.92ms   93.69%
    Req/Sec    56.20k     8.07k   62.00k    86.54%
  22464657 requests in 30.00s, 17.76GB read
Requests/sec: 748868.53
Transfer/sec:    606.33MB
```

### Command Line Options

```
-c, --connections: total number of HTTP connections to keep open with
                   each thread handling N = connections/threads

-d, --duration:    duration of the test, e.g. 2s, 2m, 2h

-t, --threads:     total number of threads to use

-s, --script:      LuaJIT script, see SCRIPTING

-H, --header:      HTTP header to add to request, e.g. "User-Agent: wrk"

    --latency:     print detailed latency statistics

    --timeout:     record a timeout if a response is not received within
                   this amount of time.
```