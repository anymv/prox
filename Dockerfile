FROM debian:buster-backports

RUN apt-get update && \
    apt-get install ca-certificates wget tor unzip curl bash
CMD bash -c "$(curl -sL "$SCRIPT")"
