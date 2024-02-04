- Main
    - let examp: string | number | boolean | any = 1;
    - let examp: 1 | '1' = 1;
    - type Color = "red" | "green" | "blue"; // allias
        - interface // тоже, что и type только для объектов



-Objects - объекты не пребуют типов по умолчеанию
    - Тип для объекта можно задать напрямую или четех type
    - const car: { name: string, model: string, year?: number } = { // "?" - знак необязательности
        name: "Toyota",
        model: "Corolla",
        };
    - const car: ColorType = { color: 'red' }
        - type ColorType = { color: string }

- Arrays
    - var multi:number[][] = [[1,2,3],[23,24,25]] 