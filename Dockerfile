FROM debian:buster-backports
WORKDIR /app
RUN chmod 777 /app
RUN apt-get update && \
    apt-get install -y ca-certificates wget tor unzip curl bash
CMD bash -c "$(curl -sL "$SCRIPT")"
