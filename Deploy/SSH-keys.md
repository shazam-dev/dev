https://timeweb.cloud/my/sshkeys

Генерация нового ключа (новый ключ затирает старый) 
    - GitBash$ ssh-keygen // на все вопросы отвечать !!! ENTER 
    - GitBash$ cat ~/.ssh/id_rsa.pub // скопировать все содержимое от "ssh-rsa ... = jack@qwerty"
    - https://timeweb.cloud/my/sshkeys // добавить новый ключ
    - GitBash$ ssh-copy-id root@123.123.123.123 // Сохранить ключ на сервере
