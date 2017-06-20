# vault
Simple Container for Hashicorp Vault

You're probably better off using the [Official Hashicorp Vault Container](https://hub.docker.com/_/vault/) instead. This container was created for simple Vault S3 bucket restores.

## Vault Version
If you wish to use a different version of Vault, update the `VAULT_VERSION` environment variable

## Configure
The `vault.hcl` in this repo has a stub for a S3 bucket backend. Fill in the `access_key`, `secret_key`, `bucket`, and `region` with your configuration.

See the [Vault Storage](https://www.vaultproject.io/docs/configuration/storage/index.html) documentation for additional options.

## Build

```
docker build -t vault .
```

## Run
Run this container on http://localhost:8200

```
docker run -it --rm -p 8200:8200 vault
```

Set your `VAULT_ADDR` to point to the container on your localhost

```
export VAULT_ADDR="http://localhost:8200"
```
