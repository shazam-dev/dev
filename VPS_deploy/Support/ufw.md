https://selectel.ru/blog/tutorials/how-to-configure-firewall-with-ufw-on-ubuntu-20/

Лучше:
Настройка:
    - https://timeweb.cloud/tutorials/ubuntu/nastrojka-faervola-v-ubuntu-s-pomoschyu-utility-ufw


    - Разрешить подключение по порту 22 (ssh) только  определенным IP
    sudo ufw allow from 80.90.179.8 to any 22 // разрешить подключение к ssh только выбранному IP

    - Запретить определенные IP по всем портам:
    sudo ufw deny from 117.35.14.73

    - sudo ufw status numbered // показать список запретов 
        - sudo ufw delete 3 // удалить запреты из списка выше


        Размер: 75х25мм; Клише под него 700 р., для заказа клише кликните "с оформлением"