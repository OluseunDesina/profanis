#stage 1
# FROM node:18.15.0 as node
# WORKDIR /app
# COPY . .
# RUN npm install
# RUN npm run start
# RUN npm run build --prod
#stage 2
# FROM nginx:alpine
# COPY --from=node /app/dist/profanis /usr/share/nginx/html
# FROM node:16-alpine AS build
# WORKDIR /app
# COPY package*.json ./
# RUN npm install
# COPY . .
FROM node:16-alpine AS build
WORKDIR /app
COPY package.json /app/
RUN npm install
COPY ./ /app/
RUN npm run build
EXPOSE 4200
CMD ["npm", "start"]
