FROM node:6.7.0

ENV NODE_MEM 2056

ADD podigg podigg
ADD bin bin
ADD package.json package.json
RUN cd podigg && npm install && npm link
RUN npm link podigg && npm install
CMD bin/generate.sh /tmp/output_data
