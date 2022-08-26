FROM golang:1.18

RUN curl -sSL "https://github.com/gotestyourself/gotestsum/releases/download/v1.6.4/gotestsum_1.6.4_linux_amd64.tar.gz" | \
	tar -xz -C /usr/local/bin gotestsum

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
CMD [""]
