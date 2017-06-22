FROM alpine:3.6
MAINTAINER Micheal Waltz <ecliptik@gmail.com>

ENV VAULT_VERSION=0.7.3

WORKDIR /app

# Install Vault
RUN apk --no-cache add \
        --virtual build-dependencies \
          unzip \
          wget && \
    apk --no-cache add \
          ca-certificates && \
          wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_amd64.zip && \
          unzip vault_${VAULT_VERSION}_linux_amd64.zip && \
          rm -fr vault_${VAULT_VERSION}_linux_amd64.zip && \
          apk del build-dependencies

COPY ./vault.hcl /app

VOLUME /mnt/vault/data
EXPOSE 8200

ENTRYPOINT [ "/app/vault" ]
CMD ["server", "-config=/app/vault.hcl"]
