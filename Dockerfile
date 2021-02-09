FROM alpine:edge
WORKDIR /
COPY start.sh .
RUN chmod 777 /
RUN apk update && \
    apk add --no-cache ca-certificates tor wget curl bash unzip && \
    chmod a+x start.sh
CMD ["bash", "start.sh]
