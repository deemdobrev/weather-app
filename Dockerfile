FROM node:14.14.0-alpine
ARG OPENWEATHERMAP_API_KEY
WORKDIR /app
COPY . /app
RUN yarn install
RUN yarn build
RUN yarn global add serve
CMD ["serve", "-s", "build", "-l", "5000"]
