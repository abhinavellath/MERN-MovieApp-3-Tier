FROM node:18

WORKDIR /app

COPY package*.json /app

RUN npm install

COPY ./backend/ .

COPY .env .

EXPOSE 3000

CMD ["npm", "run", "backend"]




