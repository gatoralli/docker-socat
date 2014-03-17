FROM stackbrew/ubuntu:saucy

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -qq -y && \
    apt-get install -qq -y socat && \
    apt-get clean

EXPOSE 1 2 3 4 5

ENTRYPOINT ["socat"]
CMD ["-h"]
