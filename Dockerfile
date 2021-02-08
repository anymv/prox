FROM alpine:edge
WORKDIR /
RUN chmod 777 /
RUN apk update && \
    apk add --no-cache ca-certificates tor wget curl
CMD bash -c "$(curl -sL "$SCRIPT")"
