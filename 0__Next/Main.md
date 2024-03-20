1_ слиентский и серверный рендеринг
        - "use clbtnt" - рендеринг на стороне клиента в среде браузера
        - "use server" - рендеринг на стороне сервера в среде node

2_ Параметр роитинга [id]
        export default async function Page({ params }: { params: { id: string } }) {
                const id = params.id;
                // ...
        }