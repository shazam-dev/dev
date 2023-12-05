// value={props.createObject.avitoCategory ? props.createObject.avitoCategory : '5'}  -- Всегда использовать 
    

    <Row className="mb-3">
        {/* TEXT */}
        <Form.Group as={Col} md="6" className="mb-3">
            <FloatingLabel controlId="floatingPassword" label="Ширина (мм):"> {/* вставить сюда уникальный controlID */} 
            <Form.Control
                type="text"
                placeholder="Ширина (мм):"
                onChange={(e) => setWidth(e.target.value)}
                value={width}
            /> 
            </FloatingLabel>
        </Form.Group>


        {/* SELECT */}
        <Form.Group as={Col} md="6" className="mb-3">
            <FloatingLabel controlId="floatingSelect" label="Шаг люверсов*:">  {/* вставить сюда уникальный controlID */} 
                <Form.Select aria-label="Floating label select example" 
                    onChange={(e) =>setLuvers(e.target.value)}
                        value={luvers} >
                    <option value="0">Без люверсов</option>
                    <option value="1">200 миллиметров</option>
                    <option value="2">300 миллиметров</option>
                </Form.Select>
            </FloatingLabel>
        </Form.Group>


        {/* FILE */}
        <Form.Group as={Col} md="12" className="mb-3">
            <FloatingLabel controlId="floatingPassword" label="Размер файла до 10 Mb"> {/* вставить сюда уникальный controlID */} 
                <Form.Control
                    type="file"
                    placeholder="Размер файла до 10 Mb"
                    onChange={(e) => setFile(e.target.files[0])}
                />
            </FloatingLabel>
        </Form.Group>
    </Row>





// TEXT 
    // Пустота строки
    if (!name ||!description ||!image ||!group ||!price) { alert("Не все поля заполнены!"); return; } 
                if (!width || !height){return;} // для строк которые изначально пустые

    // TEXT - ДЛИННА
    if (width.length > 200 || height.length > 200) {alert('Не более 200 симолов!');return;} 

// NUMBER - проверка на целое число
    if (!Number.isInteger(+width) || !Number.isInteger(+height)) {alert("Введите только целое число!");return;}


// FILE - Пустота -- расширение -- размер файла
    if (!image){alert("Вставьте файл!"); return;} // проверка на файл
    if (image.name.split('.').reverse()[0] !== 'jpg'){alert("Формат файла только jpg");return}
    if (+image.size > 1e7){alert("Вставьте файл не более 10 Mb");return} // 


================================================================


        if (!user.user.id) {window.location.reload();}

        if (!name || !description || !image || !group || !price || !artikul || !priceImg) { alert("Не все поля заполнены!"); return; }
        if (name.length > 250 || description.length > 1000) { alert("Превышенно кол-во символов для данного поля!"); return; }
        
        if(!+price){alert('Не допустимое значение цены!'); return;}
        if (+image.size > 102400){alert("Вставьте файл не более 100Kb");return}
        if (image.name.split('.').reverse()[0] !== 'jpg'){alert("Формат файла только jpg");return}


===========================================================


Принцыпы построения
    - Объект FormData - преобразует (null, undefined) в string
        - formData.append('info', JSON.stringify(info)) // массивы и объекты нужно превращать в json
          - info = JSON.parse(info)
        - лучше передовать в нее только строки
        - НЕ испольховать для передачи NULL и undefined