- Важно устанавливать ко всем пакетам в дев версию типы пакета (@types/<name of packedge>)


- MyComponent.tsx 
- import React, { FC } from 'react'; 
- interface MyComponentProps { greeting: string; } 
- const MyComponent: FC<MyComponentProps> = ({ greeting }) => { ... }
- const [count, setCount] = useState<number>(0);


-  const { adId } = useParams<{adId?: string}>();


https://react.dev/learn/typescript#typing-usestate
- 