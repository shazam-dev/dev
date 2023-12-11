```bash
# Наименование Коммитов
`fix: отремонтировал роут` // fix / build / feat - новый функционал

#Стартовая настройка
    # Сохранить пароли 
    git config --global credential.helper store
$ git config --list
$ git config --global user.name "jacklee137"
$ git config --global user.email "jack.lee137@outlook.com"


# Игнорировать файл после того, как его закоммитили
add file to gitignore
git rm --cached <file>
git rm -r --cached directory_name


# Именование Git репозиториев:
https://moduscreate.com/blog/github-semantic-naming/
    - Для open source github
        [product/project name]-[purpose]-[framework/language] e.g. myproject-api-rails
    - Для коммерческих продуктов
        [product/project name]-[purpose] e.g. myproject-rest-api
