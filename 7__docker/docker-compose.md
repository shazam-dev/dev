ORDER:
    - version
    - services
        - image / build
        - container_name
        - hostname
        - restart
        - command
        - ports
        - working_dir
        - environment
        - volumes
        - depends_on
    - volumes
    - net_works


- image: postgres:latest # Имя образа. Здесь мы используем базу данных Postgres
    # OR
    build: # Сборка образа
      context: . # путь где искать Dockerfile
      dockerfile: Dockerfile # Имя Docker-файла из которого будет собран образ

- container_name: <container_name>
    restart: unless-stopped # always - всегда перезагружаться; unless-stopped - перезагружаться кроме когда я остановил

- command: node index.js # Команда, которую нужно запустить после создания образа.
    #OR  c использованием Bash
    # command: bash -c "yarn install && yarn start"
    
- ports: # Проброс портов
      - "3000:8000" 
          - EXPOSE - https://stackoverflow.com/questions/40801772/what-is-the-difference-between-ports-and-expose-in-docker-compose
- working_dir: /app # Рпбочая папка в контейнере в которой будет запускаться контейнеры

- env_file: # Переменные окружения:
      - .env
    # OR
    environment:
      POSTGRES_PASSWORD: password

- volumes:
      - ".:/app" # Текущая директория пробрасывается в директорию /app внутри контейнера
      - "/tmp:/tmp" # Путь внутри контейнера (после двоеточия) обязательно должен быть абсолютным
- depends_on: # Сервис будет запущен, только после старта db
      - db



####################################
# NO-USE^
    # ENTRYPOINT
    # ADD