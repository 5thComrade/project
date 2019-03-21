FROM node:8.0-alpine AS builder
WORKDIR /app
RUN npm install -g snyk
COPY . /app

FROM alpine:latest
RUN apk --update add openjdk7-jre
COPY --from=0 /app .
