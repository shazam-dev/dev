- Установка 
    - $ sudo npm install -g pm2

- Запускать автоматически при запуске или перезапуске системы (хостинга VPS)
    - выполнить https://pm2.keymetrics.io/docs/usage/startup/#generating-a-startup-script
    - $ pm2 startup  
    - $ pm2 save

- Запуск под именем
    - $ pm2 start index.js --name myname --time --watch
        --time // для вставки времени в логи ошибок 
        --name <name> // для именования 
        --watch // перезагружать приложение при изменении файлов !!! я делфю в ручную
    -  $ pm2 restart index.js --time --watch // перезапуск

---------------------------------------------------------------------------------


- LOGS: (https://pm2.keymetrics.io/docs/usage/log-management/) 
    - Commands
        $ pm2 logs - показать последние 15 строчек всех журналов всех приложений
            - $ pm2 logs <appname> <--lines 40> // журналы одного приложения appname
        $ pm2 flush - очиститть журналы
    - Path of logs:
        /root/.pm2/logs/index-error.log  - ошибки
        /root/.pm2/logs/index-out.log - вывод в консоль
        /root/.pm2/pm2.log - события
    - $ pm2 monit // показывает текущие процессы 
    - $ pm2 list // показывает статические данные 

Main_info:
    - pm2 не перезагрузает приложение по умолчанию при изменении файлов, для этого нужно добавить (--watch) в конец команды запуска
    - pm2 самостоятельно отлавливает ошибки и записывает их всвой журнал ошибок ($ pm2 log <--lines 40>); 
    - Критические ошибки перезагружают pm2 (это видно в таблице (pm2 list)); 