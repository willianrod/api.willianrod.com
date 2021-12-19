FROM ghcr.io/willianrod/node-libvips:v1.0.2

WORKDIR /srv/app

COPY ./package.json ./
COPY ./yarn.lock ./

RUN yarn install --network-timeout 100000

COPY . .

RUN yarn build

EXPOSE 1337

CMD [ "yarn", "start" ]
