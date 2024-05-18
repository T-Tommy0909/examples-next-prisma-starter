FROM node:18.18.0-bullseye-slim AS base
RUN apt-get update && \
    npm install -g pnpm
WORKDIR /app

COPY package.json pnpm-lock.yaml ./

RUN pnpm install

COPY . .

CMD ["pnpm", "dx"]