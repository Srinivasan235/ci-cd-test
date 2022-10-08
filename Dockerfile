FROM node:17-alpine


WORKDIR /

COPY package.json .

RUN npm install

COPY . .

EXPOSE 3000
# required for docker desktop port mapping

CMD ["npm", "run","start"]