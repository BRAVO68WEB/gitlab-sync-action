FROM alpine

RUN apk update && apk upgrade && \
    apk add --no-cache git openssh git-lfs

RUN git lfs install

COPY mirror.sh /mirror.sh
COPY setup.sh /setup.sh

ENTRYPOINT ["/mirror.sh"]
