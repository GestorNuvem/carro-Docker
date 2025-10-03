FROM node:14-alpine3.12
WORKDIR /app
RUN addgroup dev && adduser -S -G arthur dev 
user arthur
COPY . .
RUN apk add --no-cache python2 g++ make
RUN yarn install --production 
## ENV 
CMD ["node", "src/index.js"]
EXPOSE 3000