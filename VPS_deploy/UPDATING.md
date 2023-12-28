MAIN:
    - git pull
    - npm version (npm)
    - .env
    - npm install

FRONTEND:
    - npm build

BACKEND:
    - $ pm2 start app.js --time --name <name>
        --time // для вставки времени в логи ошибок 
        --name <name> // для именования 
        --watch // перезагружать приложение при изменении файлов