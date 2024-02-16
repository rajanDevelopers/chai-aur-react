import { useState } from "react";
import reactLogo from "./assets/react.svg";
import viteLogo from "/vite.svg";
import "./App.css";

function App() {

   let [counter, setCounter ]= useState(0)
  
  const addValue = () => {
    if(counter < 20) {
      counter = counter + 1

    }
    
    setCounter(counter)
  };

  const removeValue = () => {

    if(counter > 0) {
      counter = counter - 1
    }
    
    setCounter(counter)
  }

  return (
    <>
      <h1>Chai aur React </h1>
      <h2>Counter Value : {counter} </h2>
      <button onClick={addValue}>Add Counter  {counter}</button>
      <button onClick={removeValue}>remove Counter  {counter}</button>
      <p>Footer : {counter} </p>
    </>
  );
}

export default App;
