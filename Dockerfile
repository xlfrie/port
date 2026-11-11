FROM node:26.13.0-trixie AS build
WORKDIR /app

COPY package.json package-lock.json ./
RUN npm ci

COPY . .
RUN npm run build

FROM node:26.13.0-trixie AS production
WORKDIR /app

ENV NODE_ENV=production

COPY --from=build /app/build ./build
COPY --from=build /app/package.json /app/package-lock.json ./

USER node
EXPOSE 3000
CMD ["node", "build"]