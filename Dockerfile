FROM node:20-alpine3.17 as build

# Create app directory
WORKDIR /usr/scr/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install
# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
COPY scr .

#multistage

FROM node:20-alpine3.17

COPY --from=build /usr/scr/app /

EXPOSE 80
CMD [ "node", "index.js" ]