FROM node:20-alpine

WORKDIR /app
COPY package*.json ./
RUN npm install --omit=dev
COPY . .
EXPOSE 8080
# APP_SECRET is intentionally absent on first deploy. VISA should diagnose and correct this.
CMD ["node", "server.js"]