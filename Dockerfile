FROM alpine:3
RUN apk add --no-cache bash curl jq util-linux
# util-linux c'est pour uuidgen
COPY main.sh /entrypoint.sh
COPY functions.sh /functions.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]