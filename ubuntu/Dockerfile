# Build
FROM ubuntu:18.04 as build
RUN apt-get update && apt-get install git build-essential -y

WORKDIR /tmp
RUN git clone https://github.com/wg/wrk

WORKDIR /tmp/wrk
RUN make

# Image
FROM ubuntu:18.04
COPY --from=build /tmp/wrk/wrk /usr/local/bin/
ENTRYPOINT ["wrk"]
CMD ["--help"]