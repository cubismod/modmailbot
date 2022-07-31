FROM node:16-alpine
WORKDIR /usr/src/modmail

COPY . .

RUN ["apk", "update"]
RUN ["apk", "upgrade"]

RUN ["npm", "install", "--location=global", "npm@8.15.1"]

RUN ["npm", "ci"]

CMD ["npm", "start"]
