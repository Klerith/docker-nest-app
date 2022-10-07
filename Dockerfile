FROM --platform=linux/amd64 node:18-alpine as deps
WORKDIR /app

COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile


FROM --platform=linux/amd64 node:18-alpine as builder
WORKDIR /app

COPY --from=deps /app/node_modules ./node_modules

COPY . .
RUN yarn build


FROM --platform=linux/amd64 node:18-alpine as runner
WORKDIR /app

COPY package.json yarn.lock ./
RUN yarn install --prod
COPY --from=builder /app/dist ./dist

CMD [ "node","dist/main" ]