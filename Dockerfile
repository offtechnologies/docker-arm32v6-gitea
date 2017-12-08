
FROM offtechnologies/docker-arm32v6-base-image-alpine-qemu:latest

ARG GITEA_VERSION=1.3.0

RUN apk -U upgrade \
    && apk add --no-cache \
    su-exec \
    ca-certificates \
    sqlite \
    bash \
    git \
    linux-pam \
    s6 \
    curl \
    openssh \
    wget \
    tzdata && \
    addgroup \
	   -S -g 1000 \
	   git && \
	  adduser \
	   -S -H -D \
	   -h /data/git \
	   -s /bin/bash \
	   -u 1000 \
	   -G git \
	   git && \
	  echo "git:$(date +%s | sha256sum | base64 | head -c 32)" | chpasswd

  RUN mkdir -p /app/gitea && \
      wget -q -O /app/gitea/gitea https://dl.gitea.io/gitea/${GITEA_VERSION}/gitea-${GITEA_VERSION}-linux-arm-6 && \
      chmod +x /app/gitea/gitea

  ENV USER git
  ENV GITEA_CUSTOM /data/gitea
  ENV GODEBUG=netdns=go
  COPY docker /
  EXPOSE 22 3000

  VOLUME ["/data"]

  ENTRYPOINT ["/usr/bin/entrypoint"]
  CMD ["/bin/s6-svscan", "/etc/s6"]
