MAIN:
    - git pull
    - npm version (npm)
    - .env
    - npm install

FRONTEND:
    - npm build

BACKEND:
    - pm2 restart index.js