FROM node:0.12

# setup app dir
RUN mkdir -p /www/
WORKDIR /www/

# copy over app dir
COPY ./ /www/

# setup deps
RUN npm install
RUN npm test

# start server
CMD npm start

# expose server
EXPOSE 9000