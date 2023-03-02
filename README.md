# ops

A minimal image for running Linux CLI utilities - shell scripts and similar.

## Quickstart

```console
$ docker run -ti --rm ghcr.io/infinite-industries/ops bin/db-backup
```

## Utilities

### db-backup

Backup a Postgres database and optionally copy it to an S3 bucket.

Source: [bin/db-backup](ctx/home/bin/db-backup)

Usage within this image:

```console
# basic usage - setting environment variables for database name, db & aws
# connection info in an env file
docker run --env-file .env --rm ghcr.io/jswank/ops:latest

# basic usage - setting environment variables for db & aws connection info in
# an env file
docker run --env-file .env --rm ghcr.io/jswank/ops:latest dbname

# debugging
docker run --env-file .env --rm ghcr.io/jswank/ops:latest bash -x bin/db/backup

# storing a copy on the host machine
mkdir /home/infinite/backups && sudo chown 1000:1000 /home/infinite/backups
docker run --env-file ops.env -v /home/infinite/backups:/var/tmp/backups --rm ghcr.io/jswank/ops:latest
```
