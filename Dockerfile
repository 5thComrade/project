FROM node:8.0-alpine AS builder
RUN npm install -g snyk
WORKDIR /app
COPY . /app
