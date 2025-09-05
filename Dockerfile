FROM node:18-alpine

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .

RUN npm run build

COPY .env.example ./.env.example

CMD ["node", "dist/index.js"]
