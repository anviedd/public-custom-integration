FROM node:lts-alpine as build

WORKDIR /app

RUN apk add --no-cache git
RUN git clone https://github.com/swagger-api/swagger-ui.git /app
RUN yarn install --frozen-lockfile

FROM nginx:1.21-alpine

COPY --from=build /app/dist /usr/share/nginx/html
COPY swagger-ui/entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

CMD ["/entrypoint.sh"]
