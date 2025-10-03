FROM node:14-alpine3.12
WORKDIR /app
COPY . .
RUN apk add --no-cache python2 g++ make