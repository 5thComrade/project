FROM node:8.0-alpine AS builder
RUN npm install -g snyk
COPY . /opt/app

FROM alpine:latest
RUN apk --update add openjdk7-jre
COPY --from=0 /opt/app .





