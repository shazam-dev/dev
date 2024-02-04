```js
Routing:
        import { BrowserRouter, Routes, Route } from "react-router-dom";



// Получить изменяемые значения uri - google.com/:ctegory/:page
        import { useParams } from "react-router-dom";
        const {category, page } = useParams();

// Получить get параметры - google.com?name=jack&id=1
        import { useSearchParams } from "react-router-dom";
        const [searchParams, setSearchParams] = useSearchParams()
        searchParams.get('name') // retutn jack

// Перенаправление только внутри верстки react
        import { Navigate } from "react-router-dom";
        <Navigate to='/url' />

// Перенаправление без перезагрузки
        import { useNavigate  } from "react-router-dom";
        const navigate = useNavigate();

        navigate(`/user/user-ads-list`, { replace: true }); // замена урл - нельзя перейти назад по стрелке
        navigate(`/user/user-ads-list`); // можно перейти назад по стрелке
        // Перенаправление без перезагрузки с сохранением переменных
                window.location.replace("/user/user-ads-list");