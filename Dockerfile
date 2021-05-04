## Build
FROM beevelop/ionic:latest AS ionic

WORKDIR /usr/src/app

COPY package*.json ./
RUN npm install

COPY . .
RUN ionic build


## Run 
FROM nginx:alpine
#COPY www /usr/share/nginx/html
COPY --from=ionic /usr/src/app/www /usr/share/nginx/html