FROM node
MAINTAINER bence@patientsknowbest.com
RUN mkdir /opt/fake-oauth2-server
WORKDIR /opt/fake-oauth2-server
ADD server.js server.js
ADD input.html input.html
ADD app.js app.js
ADD package.json package.json
ADD package-lock.json package-lock.json
RUN npm install
EXPOSE 8282
ENTRYPOINT ["npm" , "start" ]
