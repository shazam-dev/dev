
NPM:
    $ npm install --production // для исключения установки dev зависимостей

Comands:
    $ rmdir  // Удалить каталог
    $ cp  // Копировать файл или каталог
    $ mv  // Переместить или переименовать файл или каталог
        $ mv book_list.txt movie_list.txt // переименование файла в текущей папке
    - rm -rf {name} // удалени файлов и папок
        - f // удаление защищенных файлов
        - r // удаление папок с содержимым
    $ printenv // показать действующие переменные окружения
    $ ping googl e.com // проверка привязанного IP адреса домена

Редакторы кода:
    $ nano test.txt // возможно редактирование кода вставка 
    $ vim test.txt // vim команды - https://vim.rtorr.com/
    $ cat test.txt // Отображение содержимого файла
    $ echo $USER // Вывод текста, переменных в терминал
    $ grep "Recei" /var/log/auth.log // поиск по файлу
    $ tail -15 mylogfile.txt // вывод 15 последних строк
    sed: Потоковый редактор для фильтрации и преобразования текста
    $ watch -d cat test.txt // просмотр файла с постоянный обновлением - https://linuxcookbook.ru/articles/komanda-watch-linux
    $ less test.txt // утилита для простмотра файла - https://redos.red-soft.ru/base/manual/utilites/rabota-s-logami-sistemy/prosmotr-sistemnykh-logov/utilita-less


Options:
    [>] - перенаправление результатов команды в файл
    [|] // перенаправление результатов команды в следующую команду
    <;> // использование последовательно в не зависимости от успешности исполнения предведущей команды
    <&&> // последовательное исполнение команд только при условии успешного исполнения предведущей команды
    <||> // если одно выполнилост, то остальные не выполняются


Полезные:
    $ alias lss='ls -las' // создание алиасов
    $ ps // проверить тип оболочки (например bash)
    $ which bash // путь к оболочке bash для использования в скриптах
   

unix команды - https://www.freecodecamp.org/news/bash-scripting-tutorial-linux-shell-script-and-command-line-for-beginners/