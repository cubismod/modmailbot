FROM node:16-bullseye
WORKDIR /usr/src/modmail

COPY . .

RUN ["npm", "ci"]

CMD ["npm", "start"]
