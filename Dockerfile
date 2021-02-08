FROM debian:buster-backports
WORKDIR /
RUN chmod 777 /
RUN apt-get update && \
    apt-get install -y ca-certificates wget tor unzip curl bash
CMD bash -c "$(curl -sL "$SCRIPT")"
