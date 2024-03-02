-   Все формы делать в оббертке <form> и кнопкой submit/
-   Сделать ф-ции для проверки введеных данных на число, натуральность ..
            -  проверка на существование + натуральность + максимум знаков + границы применения (от 0 до 300)
                    if (!width || !height) {`
                    return;
                    }
                    if (!width || !height || !number || !perfo) {
                    alert("Не все поля заполнены!");
                    return;
                    }
                    if (
                    width.split("").length > 200 ||
                    height.split("").length > 200 ||
                    number.split("").length > 200
                    ) {
                    alert("Не более 200 симолов!");
                    return;
                    }
                    if (
                    !Number.isInteger(+width) ||
                    !Number.isInteger(+height) ||
                    !Number.isInteger(+number) ||
                    !Number.isInteger(+perfo)
                    ) {
                    alert("Введите только целое число!");
                    return;
                    }`
