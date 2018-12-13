# Build
FROM alpine:latest as build
RUN apk add --update alpine-sdk perl

WORKDIR /tmp
RUN git clone -b 4.0.2 https://github.com/wg/wrk

WORKDIR /tmp/wrk
RUN make

# Image
FROM alpine:latest
RUN apk add --no-cache libgcc
COPY --from=build /tmp/wrk/wrk /usr/local/bin/
ENTRYPOINT ["wrk"]