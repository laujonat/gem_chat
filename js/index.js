import React from "react";
import ReactDOM from "react-dom";
import App from "./App";
import "./index.css";

document.addEventListener("DOMContentLoaded", () => {
  if (window.currentUser) {
    delete window.currentUser;

    ReactDOM.render(<App />, document.getElementById("root"));
  }
});
