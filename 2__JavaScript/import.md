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
        export default let name...
            import Test from './Test'; 