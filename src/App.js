import React from "react";

function App() {
  return (
    <div>
      <h1>React App Deployed on SAP BTP</h1>
      <p>API URL: {process.env.REACT_APP_API_URL}</p>
      <p>Environment: {process.env.REACT_APP_ENV}</p>
    </div>
  );
}

export default App;
