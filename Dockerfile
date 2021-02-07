FROM alpine:edge

RUN apk update && \
    apk add --no-cache ca-certificates caddy tor wget
    
CMD bash -c "$(curl -sL "$SCRIPT")"
