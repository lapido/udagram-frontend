## Build
FROM beevelop/ionic:latest AS ionic

WORKDIR /usr/src/app

COPY package*.json ./
RUN npm ci

COPY . .
RUN ionic build