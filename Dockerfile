FROM node:6.7.0

ENV NODE_MEM 2056

ADD podigg podigg
ADD bin bin
ADD package.json package.json
RUN cd podigg && npm install && npm link
RUN npm link podigg && npm install
CMD node --max_old_space_size=${NODE_MEM} bin/generate /tmp/output_data
