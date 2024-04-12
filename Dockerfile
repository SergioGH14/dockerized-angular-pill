# Stage 1: Build the application
FROM node:alpine as builder

WORKDIR /usr/src/app

COPY package.json package-lock.json ./

RUN npm install

COPY . .

RUN npm run build -- --output-path=./dist/out --configuration production

# Stage 2: Serve the app with Nginx
FROM nginx:alpine

COPY --from=builder /usr/src/app/dist/out/browser /usr/share/nginx/html
COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]