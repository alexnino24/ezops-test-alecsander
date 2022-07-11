FROM node:alpine
WORKDIR /app
COPY package*.json ./
RUN npm install --silent
COPY . .
EXPOSE 80
CMD ["node", "server.js"]
