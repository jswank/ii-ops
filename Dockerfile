FROM ghcr.io/jswank/alpine-cli:latest

USER root

RUN apk add -U --no-cache postgresql-client aws-cli

COPY home/bin/* /home/cli/bin

RUN chown -R cli:cli /home/cli

USER cli
