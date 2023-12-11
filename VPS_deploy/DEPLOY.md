https://www.fossdex.com/new/deploying-full-stack-mern-application-on-an-nginx-vps/

Step 1: Set up your VPS:
    - <sudo apt update>
    - Check git version
    - Install Node & NPM by NVM
        https://www.digitalocean.com/community/tutorials/how-to-install-node-js-on-ubuntu-22-04
        https://github.com/nvm-sh/nvm
            - <curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash>
            - перезапуск терминала
            - <source ~/.bashrc>
            - <nvm install v18.15.0>
    - <npm install pm2 -g>
    - <sudo apt install nginx> // https://www.digitalocean.com/community/tutorials/how-to-install-nginx-on-ubuntu-22-04
        - Set up firewall <sudo ufw allow 'Nginx HTTP'>
    
STEP 2: Clone git repositry:
    - <git clone ... /var/www/> // клонирование всего проекта в папку контента nginx
        - git config --global credential.helper store
    - Frontend
        - <cd frontend; touch .env; nano .env> // вставить переменные среды фронта !!!! другой хост на проде
        - <npm install>
        - <npm run build>
    - Backend
        - <cd backend; touch .env; nano .env> // вставить переменные среды фронта
        - <pm2 start index.js>

Step3: Config NGINX
    - sudo rm /etc/nginx/sites-enabled/default
    - sudo nano /etc/nginx/sites-available/mern-app