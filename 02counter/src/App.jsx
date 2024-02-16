import { useState } from "react";
import reactLogo from "./assets/react.svg";
import viteLogo from "/vite.svg";
import "./App.css";

function App() {

   let [counter, setCounter ]= useState(15)
  // const [count, setCount] = useState(0)
  // let counter = 15;
  const addValue = () => {
    console.log("Clicked", counter);
    counter = counter + 1;
    setCounter(counter)
  };

  return (
    <>
      <h1>Chai aur React </h1>
      <h2>Counter Value : {counter} </h2>
      <button onClick={addValue}>Add Counter  {counter}</button>
      <button>remove Counter  {counter}</button>
      <p>Footer : {counter} </p>
    </>
  );
}

export default App;
