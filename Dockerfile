FROM node:8.11.2-slim
ENV APP_ROOT /usr/src/orenoexpress

WORKDIR $APP_ROOT
COPY package.json $APP_ROOT
RUN npm install && npm cache verify

COPY . $APP_ROOT
EXPOSE 3000
CMD ["npm", "start"]