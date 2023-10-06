```bash
# Наименование Коммитов
`fix: отремонтировал роут` // fix / build / feat - новый функционал

#Стартовая настройка
$ git config --list
$ git config --global user.name "jacklee137"
$ git config --global user.email "jack.lee137@outlook.com"

# Сохранить пароли 
git config --global credential.helper store

# Игнорировать файл после того, как его закоммитили
add file to gitignore
git rm --cached <file>
git rm -r --cached directory_name