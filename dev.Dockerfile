FROM node:20-alpine
WORKDIR /home/project
COPY ./package.json .
RUN yarn && yarn global add vite
COPY . .
CMD [ "vite", "--host" ]