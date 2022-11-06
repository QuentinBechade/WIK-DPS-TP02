FROM node:16.13.2


WORKDIR /app

ENV PING_LISTEN_PORT=8000


COPY /package*.json .


RUN npm i

COPY src .
COPY tsconfig.json .


RUN npx tsc 


RUN useradd -r appuser
USER appuser


CMD node build/index.js

