# Build
FROM ubuntu:20.04 as build
RUN apt-get update && apt-get install git zip build-essential -y

WORKDIR /tmp
RUN git clone https://github.com/wg/wrk

WORKDIR /tmp/wrk
RUN make

# Image
FROM ubuntu:22.04
RUN apt-get update && apt-get install netbase -y && rm -rf /var/lib/apt/lists/*
COPY --from=build /tmp/wrk/wrk /usr/local/bin/
ENTRYPOINT ["wrk"]
CMD ["--help"]
