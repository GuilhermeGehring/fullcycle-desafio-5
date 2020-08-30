FROM node:12.13-alpine As development

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm i -S glob

RUN npm install

COPY . .

RUN npm run build

CMD ["node", "dist/main"]