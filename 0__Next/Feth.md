Способы запросить данные в NEXT
    1) Server Action
        - только для POST запросов
        - запрашивает напрямую функцию, а не путь (нельзя сделать внешние точки входа сервера api/test)
        - сложности с обратной связью, обратно информация не приходит
        - быстрая реализация
    2) React-query
       - запрашивает напрямую функцию, а не путь (нельзя сделать внешние точки входа сервера api/test)
         - https://tanstack.com/query/latest/docs/framework/react/guides/queries
         - https://blog.logrocket.com/deep-dive-mutations-tanstack-query/
         - https://medium.com/@mitchelldalehein25/react-query-usemutation-hook-2603f103f9a3
    3) SWR
       - запрашивает путь api/test
       - 