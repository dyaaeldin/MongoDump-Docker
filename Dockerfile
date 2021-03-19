FROM alpine:3.12
ENV TZ=Africa/Cairo
WORKDIR /workdir
COPY entrypoint.sh ./
COPY ./scripts/ /usr/local/bin/
RUN apk update && \
    apk add mongodb-tools openssh-client ca-certificates tzdata && \
    rm -rf /var/cache/apk/* && \
    chmod a+x /usr/local/bin/* && \
    chmod a+x ./entrypoint.sh
    
CMD ["/workdir/entrypoint.sh"]
