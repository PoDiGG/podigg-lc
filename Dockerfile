FROM node:6.7.0
ADD bin .
ADD package.json package.json
RUN npm install
CMD node --harmony_destructuring bin/generate
