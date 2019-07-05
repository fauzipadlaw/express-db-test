FROM node:latest
WORKDIR /usr
RUN npm install -g nodemon
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 3333
CMD ["nodemon", "/src/index.js"]