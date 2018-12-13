FROM ubuntu:18.04
WORKDIR /root

RUN \
    echo "Installing tools..." && \
    apt-get update && apt-get install git build-essential -y

RUN \
    echo "Clonning repository..." && \
    git clone https://github.com/wg/wrk.git && \
    echo "Building wkr..." && \
    cd wrk && make && \
    cp wrk /usr/local/bin

RUN \
    echo "Cleaning..." && \
    apt-get purge git build-essential -y && \
    apt-get autoremove -y && \
    rm -rf /root/wrk

CMD wrk