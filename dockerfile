FROM node:20-alpine AS build

WORKDIR /app

COPY package.json yarn.lock ./

RUN yarn install --frozen-lockfile --network-timeout 600000

COPY . .


FROM node:20-alpine

WORKDIR /app

COPY --from=build /app .

EXPOSE 3000

CMD ["yarn", "start"]