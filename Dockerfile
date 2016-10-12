FROM node:6.7.0
ADD podigg podigg
ADD bin bin
ADD package.json package.json
RUN cd podigg && npm install && npm link
RUN npm link podigg && npm install
CMD node bin/generate /tmp/output_data
