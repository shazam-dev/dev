https://www.mongodb.com/docs/manual/tutorial/install-mongodb-on-ubuntu/

    - <sudo systemctl enable mongod> // автозагрузка базы данных при старте системы
    - <mongosh> - для входа в консоль mongoDB
        - <exit> // для выхода из консоли mongoDB
    - <sudo systemctl status mongod> // 

___________________________________________________________________________________
https://www.educative.io/answers/12-basic-mongodb-commands

    - use users // сменить базу данных
    - show db // список баз данных
    - db // текущая база данных
    - show collections // список коллекций 
    
    Show:
        - db.[collection_name].find({},{id:1}).pretty() // покажет все записи коллекции, где id:1 значить вывести только id
    Insert:
        - db.[collections_name].insert({"name": "Theodore", "gender": "M"}) // вставит запись в коллекецию
    Update:
        - db.[collections_name].update({"name":"Theodore"},{$set: {"name": "Theodore Kelechukwu Onyejiaku"}}) // обновить информацию
        - db.[collections_name].update({"name":"Theodore"},{$rename: {"gender":"sex"}}) // обновить название поля
        - db.[collections_name].update({"name":"Theodore"},{$unset: {"gender":"sex"}}) // удалить поле
    Delete:
        - db.customer.remove({"name":"Jane Doe"})

        
    - db.changeUserPassword("app_user", "new password") // заменить пароль на 
    