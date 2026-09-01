FROM node:20-slim

WORKDIR /app

COPY package*.json ./

RUN npm install --omit=dev --no-audit --no-fund

# Add these lines to complete the build and start the app:
COPY . .

EXPOSE 3000

CMD ["npm", "start"]
