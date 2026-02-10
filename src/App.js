import React from "react";
import "./App.css";

const apiUrl = process.env.REACT_APP_API_URL;

function App() {
  return (
    <div className="App">
      <h1>Frontend Demo on SAP BTP</h1>
      <p>Current API URL: {apiUrl}</p>
    </div>
  );
}

export default App;
