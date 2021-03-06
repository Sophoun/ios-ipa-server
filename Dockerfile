FROM node:12.18.1

ENV host_ip=127.0.0.1
ENV port=1234

# Create app directory
WORKDIR /app
CMD mkdir /ipa

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package.json package.json
COPY package-lock.json package-lock.json

RUN npm install
# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
COPY . .

EXPOSE 1234
CMD node bin/ios-ipa-server.js -i ${host_ip} -p ${port} /ipa