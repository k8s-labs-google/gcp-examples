# pull in the managed dev / build image
FROM gcr.io/example-org/node-build:latest

COPY package.json package.json
RUN yarn install
COPY . .
# can be done in the container or run on the build container
#RUN yarn run test

# pull in the managed production image
FROM gcr.io/example-org/node-deploy:latest

COPY package.json package.json
RUN yarn install --production

COPY . .

CMD ["yarn", "start"]
