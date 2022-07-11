FROM node:latest
WORKDIR /app
COPY package*.json ./
RUN npm install --silent
COPY . .
ENV PORT=3000
EXPOSE 3000
CMD ["node", "server.js"]
