# syntax=docker/dockerfile:1
FROM node:15
WORKDIR /code
ENV PORT=4001
COPY package.json package.json
RUN yarn install
RUN yarn build
EXPOSE 4001
COPY . .
CMD ["yarn", "start"]