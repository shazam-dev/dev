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

STEP 1,5: 
    - MongoDB installition
    
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
        - ...
        - sudo nginx -t
        - sudo systemctl reload nginx

Step3: Config NGINX
    - sudo rm /etc/nginx/sites-enabled/default
    - sudo nano /etc/nginx/sites-available/mern-app

Step 4: domen & SSl
    - заменить А-запись домена на IP-адрес хостинга (АААА-запись удалить - иначе будет ошибка)
        - <ping <my_domen>> // проверить А-запись
    - подключить SSL при помощи certbot, инструкция -> (support -> certbot.md)

Step 5: Config NGINX (/etc/nginx/nginx.conf):
    - добавить переадресацию в nginx.conf, потому что при вставке http://www.davse.ru/ в поисковую строку браузера - выхидит 404 (nginx/1.18.0 (Ubuntu))
    - добавить разрешение загружать файлы больше 2048 байт в теле пост запроса.





