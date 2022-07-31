FROM node:16-bullseye
WORKDIR /usr/src/modmail

COPY . .

RUN ["apt-get", "update", "-y"]
RUN ["apt-get", "upgrade", "-y"]

RUN ["npm", "ci"]

CMD ["npm", "start"]
