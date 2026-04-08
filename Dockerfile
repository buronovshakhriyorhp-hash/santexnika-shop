# Dockerfile for a TypeScript + Fastify + Prisma + React project
FROM node:14

WORKDIR /app

COPY package.json .
COPY package-lock.json .

RUN npm install

COPY . .

CMD [ "npm", "start" ]