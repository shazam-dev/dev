```js
IF: __________________________________________
    

    let a = varOne || 6 || 3 || 4; // a бадет первым истиным значением
    
    let one = условие ? значение1 : значение2; 
    /*return*/ условие ? значение1 : значение2; 

    Spred (распространить)   
        - const newObject = {...oneObject, ...twoObject};
        - const newArray = [...oneArray, ...twoArray];
        - func(...[1, 2, 3, 4, 5]); //! func(1,2,3,4,5);
    Rest (собрать)
        - func(a, b, ...rest);
        - const [one, two, ...rest];
        
        setTodos((t) => [...t, "New Todo"]);
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

        - вставить елемент, если он есть
            {a:1, ...(yourConditionalBoolean && {b:2})  } // outputs {a: 1} or {a:1, b:2} - https://elvisciotti.medium.com/conditional-adding-object-properties-in-javascript-in-one-line-de97f5de449a

        - новая переменная и значение по умолчанию
        const { name, age, salary=123455 } = user; // https://www.freecodecamp.org/news/javascript-object-destructuring-spread-operator-rest-parameter/

        - значение новой переменной на основе существующих
        const { first_name, last_name, full_name=`${first_name} ${last_name}` } = user;


        __________________________ Новые возможности: (не везде работают! - на сервере можно!)
            const element = e?.d.f.g; // если е не существует, то d и последюющие свойства не будут давать ошибку, а просто undefined
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

