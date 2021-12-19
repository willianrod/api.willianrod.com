FROM node:16.13.1

WORKDIR /srv/app

COPY ./package.json ./
COPY ./yarn.lock ./

RUN yarn install

COPY . .

RUN yarn build

EXPOSE 1337

CMD [ "yarn", "start" ]
