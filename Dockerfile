FROM alpine:edge

RUN apk update && \
    apk add --no-cache ca-certificates wget tor unzip curl bash
CMD bash -c "$(curl -sL "$SCRIPT")"
