FROM node:10-alpine

WORKDIR /user/app

COPY package.json package-lock.json ./

RUN npm i

COPY . .

EXPOSE 3000
CMD ["npm","start"]