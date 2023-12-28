My IP: 80.90.179.8(home) -  

- pm2
    - info: 
        - pm2 не перезагрузает приложение по умолчанию при изменении файлов, для этого нужно добавить (--watch) в конец команды запуска
        - pm2 самостоятельно отлавливает ошибки и записывает их всвой журнал ошибок ($ pm2 log <--lines 40>); 
        - Критические ошибки перезагружают pm2 (это видно в таблице (pm2 list)); 
    - $ pm2 logs <--lines 40> // получить вывод в консоль 40 строк журналов (втч с ошибками) всех приложений
        - pm2 logs <appname> <--lines 40> // журналы одного приложения appname
        - $ pm2 flush // очиститть журналы
    - $ pm2 monit // показывает текущие процессы 
    - $ pm2 list // показывает статические данные 

- nginx - https://www.digitalocean.com/community/tutorials/how-to-troubleshoot-common-nginx-errors
    - $ sudo cat /var/log/nginx/error.log // вывести журнал ошибок
    - sudo nginx -t // проверка на синтаксические ибки
    - systemctl status nginx // работает ли сервер
        - sudo systemctl restart nginx // если сервер не запуще, то запустить

- ufw
    - /var/log/auth.log // в этом журнале все входы в систему UBUNTU, !!! Если много мусора, то возможно хакерская атака
        - $ watch tail -n 15 /var/log/auth.log // открыть самообновляющийся список последних строк файла

- MongoDB
    - sudo cat /var/log/mongodb/mongod.log


===========================
Идеи
- https://www.wikihow.life/Secure-an-Ubuntu-Server
- https://www.nuharborsecurity.com/blog/ubuntu-server-hardening-guide-2
- защита от дос атак в таймвеб
- Антивирус 
- штака как на озоне - при входе с ВПН