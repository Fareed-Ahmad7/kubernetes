FROM node:latest

LABEL maintainer="fareed"

# copy everything to docker source
COPY . /src

RUN cd /src; npm install

EXPOSE 8080

CMD cd /src; node app.js