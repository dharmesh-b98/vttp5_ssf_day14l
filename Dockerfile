FROM  node:18

#labelling the dockerfile
LABEL MAINTAINER="dharmesh"
LABEL description="This is VTTP5 SSF day 14 lecture demo"
LABEL name="vttp5-ssf-day14l"

ARG APP_DIR=/node_src

WORKDIR ${APP_DIR}

COPY package*.json index.js ./

RUN npm install

ARG SERVER_PORT=3000

EXPOSE ${SERVER_PORT}

CMD node index.js
