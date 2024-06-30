FROM node:20-alpine
WORKDIR /usr/src/app
COPY package.json yarn.lock ./
RUN yarn install
#RUN yarn global add strapi@latest
COPY . .
RUN yarn build
EXPOSE 1337
CMD ["yarn", "start"]
