FROM golang:1.21.4-bullseye

RUN curl -sSL "https://github.com/gotestyourself/gotestsum/releases/download/v1.11.0/gotestsum_1.11.0_linux_amd64.tar.gz" | \
	tar -xz -C /usr/local/bin gotestsum
RUN curl -fsSL https://get.docker.com | sh
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
CMD [""]
