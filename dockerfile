FROM node:14

WORKDIR /usr/src/app

COPY package*.json ./
RUN npm install
RUN npm install pm2 -g
COPY . .
EXPOSE 3978
CMD ["node","index.js"]
CMD ["pm2-runtime", "index.js"]
