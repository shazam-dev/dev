useState
    - использовать объекты в useState только для данных инпутов, потому что остальные перестанут изменяться!
    - Не использовать вложенные useState в useEffect - те. значение одного useState зависит от значения другого useState - это приведет к ошибке
    - Это идеал для проверки целого числа (кол-ва)
      -     if (!mainObject.number) {return;}
            if (!Number.isInteger(+mainObject.number)) {
                alert("Введите только целое число!");
                setMainObject({...mainObject, number: '0'})
                return;
            }