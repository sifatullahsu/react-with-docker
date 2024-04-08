# Stage 01
FROM node:20-alpine as builder
WORKDIR /home/project
COPY ./package.json .
RUN yarn
COPY . .
RUN yarn build

# Stage 02
FROM nginx:1.25-alpine as final
WORKDIR /usr/share/nginx/html
COPY --from=builder /home/project/dist ./