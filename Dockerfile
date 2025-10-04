FROM node:12-alpine
WORKDIR /app
COPY package.json .
RUN apk add --no-cache python2 g++ make
RUN yarn install --production 
COPY . .
## ENV 
CMD ["node", "src/index.js"]
EXPOSE 3000