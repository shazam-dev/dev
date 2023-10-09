# Образ который качаем
FROM node:14.21.1-alpine

# Папка от корня где исполнять команды !!! Можно менять после команды
WORKDIR /app

# Команда копировать что - в папку
COPY package*.json ./

# исполнение команд в Shell format = прямая запись 
RUN npm install --silent 
RUN npm install react-scripts@5.0.1 -g --silent

# создание файла .dockerenv из из которого можно использовать переменные
ENV MY_NAME="John Doe"

# исполнение команды после создания контейнера
CMD ["nodemon", "--exec", "npm", "start"]










#Here we will use node as the base image.
FROM node:14.21.1-alpine

#create a working directory inside the container.
WORKDIR /app

#Environment variables.
ENV PATH /app/node_modules/.bin:$PATH

#copy the files from the host to the container.
COPY package.json ./
COPY package-lock.json ./

  #install npm and react versions.
RUN npm install --silent
RUN npm install react-scripts@5.0.1 -g --silent

#install nodemon to provide hot-reloading functionality.
RUN npm install nodemon --save-dev
COPY . ./

#use nodemon to run the react application using npm.
CMD ["nodemon", "--exec", "npm", "start"]