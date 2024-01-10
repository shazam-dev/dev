```js
// COMMON (NPM_OLD)

        module.exports = math;
        module.exports = {square, cube};
            const math = require('./math'); // импортирует объект math
            const {square, cube} = require('./math'); // деструктуризация объекта


// JS_ES6 ================================================================================================
        
        export let name...
        export {name, name1}
            import {name, name1} from './Test';

        // DEFAULT
        export default {...} // здесь не нужно создавать переменную для импорта
            import Test from './Test'; 

            export default varName; // экспорт после создания переменной
                import anyName from './Any';