- MyComponent.tsx 
- import React, { FC } from 'react'; 
- interface MyComponentProps { greeting: string; } 
- const MyComponent: FC<MyComponentProps> = ({ greeting }) => { ... }
- const [count, setCount] = useState<number>(0);

https://react.dev/learn/typescript#typing-usestate
- 