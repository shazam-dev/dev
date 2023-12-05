```js
IF: __________________________________________
    let a = varOne || 6; // если varOne не существует, то будет 6, НО varOne должно быть задано undefined 
    let one = условие ? значение1 : значение2; 
    /*return*/ условие ? значение1 : значение2; 

    Spred (распространить)   
        - const newObject = {...oneObject, ...twoObject};
        - const newArray = [...oneArray, ...twoArray];
        - func(...[1, 2, 3, 4, 5]); //! func(1,2,3,4,5);
    Rest (собрать)
        - func(a, b, ...rest);
        - const [one, two, ...rest];
    Деструктуризация:
        - Массивы
            - const [one, two] = oneArray // в пременные one и two запишутся первые два елемента массива
            - const [, , one, two] = oneArray // в пременные one и two запишутся 3 и 4 елементы массива
            - const [one, two, ...rest] = oneArray // в пременные one и two запишутся первые два елемента массива, а остальные в переменную rest
        - Объекты
            - const {one, two} = oneObject // переменные только под темиже
            - const {one, two, outside} = oneObject // если имени outside нет в объекте, то outside = undefined
            - const {one, two, ...rest} = oneObject;// все остальные елементы объекта запишутся в объект rest
            - const {one: two} = oneObject // alias - меняет имя переменной при деструктуризации

______________________________________________
    setTimeout(function() {alert('!'); }, 3000); 


_______________экранирование_________________
        \' // экранирование ковычек в строке 
        \"  // 
        \n, \b, \f, \r, \t, \v  // специальные символы



Falsy values: 0, '', false, null, NaN, undefined


Check_type
    Array 
        letters instanceof Array // 
        Array.isArray() 
        array.length

    Number
        isNaN('we') // проверка на число
        Number.isInteger(+width) // проверка на целое число

    Object
        Object.keys(devices).length // Проверка массива на пустоту 



https://stackoverflow.com/questions/69173568/javascript-array-empty-and-undefined