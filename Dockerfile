FROM alpine:latest

WORKDIR /app
COPY ./tunnel.sh /app/tunnel.sh

# update openssh-client
RUN apk add --update openssh-client && rm -rf /var/cache/apk/*

RUN chmod +x /app/tunnel.sh

# run ssh tunnel
CMD /app/tunnel.sh

EXPOSE 1-65535
