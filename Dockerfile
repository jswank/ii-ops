FROM ghcr.io/jswank/alpine-cli:latest

USER root

RUN apk add -U --no-cache postgresql-client rclone

COPY --chown=cli:cli home/bin/* bin/

USER cli
