FROM node:16

WORKDIR /app

COPY ./frontend ./frontend
COPY ./backend ./backend
COPY ./start.sh ./start.sh

WORKDIR /app/backend
RUN npm ci
RUN npm install --save-dev stepci@2.6.3

CMD ["npm", "run", "dev"]

EXPOSE 8080