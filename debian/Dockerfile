# Build
FROM debian:stable-slim as build
RUN apt-get update && apt-get install git build-essential -y

WORKDIR /tmp
RUN git clone https://github.com/wg/wrk

WORKDIR /tmp/wrk
RUN make

# Image
FROM debian:stable-slim
RUN apt-get update && apt-get install netbase -y && rm -rf /var/lib/apt/lists/*
COPY --from=build /tmp/wrk/wrk /usr/local/bin/
ENTRYPOINT ["wrk"]
CMD ["--help"]