FROM node:8.0-alpine AS builder
RUN npm install -g snyk

FROM alpine:latest
RUN apk --update add openjdk7-jre

