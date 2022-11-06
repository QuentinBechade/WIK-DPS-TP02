FROM node:14.18.0

WORKDIR /usr

COPY package.json ./

RUN npm install

COPY src/index.ts ./src/index.ts


RUN npx tsc src/index.ts


EXPOSE 8000

CMD ["npm","run","start"]  