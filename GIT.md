```bash
#Стартовая настройка
<git config --global credential.helper store> # Сохранить пароли 
<git config --list>
<git config --global user.name "jacklee137"?
<git config --global user.email "jack.lee137@outlook.com"?


# Игнорировать файл после того, как его закоммитили
add file to gitignore
git rm --cached <file>
git rm -r --cached directory_name
git status --ignored // получить список игнорируемых файлов и папок


# Именование Git репозиториев:
https://moduscreate.com/blog/github-semantic-naming/
    - Для open source github
        [product/project name]-[purpose]-[framework/language] e.g. myproject-api-rails
    - Для коммерческих продуктов
        [product/project name]-[purpose] e.g. myproject-rest-api


# ОШИБКИ:
    - При переименовании при котором меняется только регистр букв - гит не увидит этого!
        : <git mv old-file-name.ts new-file-name.ts>