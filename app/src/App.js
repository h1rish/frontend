import React, { useEffect, useState } from "react";

function App() {
  const [message, setMessage] = useState("Loading...");

  useEffect(() => {
    const apiURL = process.env.REACT_APP_API_URL || "/backend";
    fetch(`${apiURL}/message`)
      .then((res) => res.json())
      .then((data) => setMessage(data.message))
      .catch(() => setMessage("Backend not reachable"));
  }, []);

  return (
    <div style={{ fontFamily: "Arial", padding: "40px" }}>
      <h1>SAP BTP React HTML5 Deployment</h1>
      <p>{message}</p>
    </div>
  );
}

export default App;
