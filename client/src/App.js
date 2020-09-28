import React from 'react';
import logo from './logo.svg';
import './App.css';
import NavBar from "./components/Navbar";
import {Route, Switch} from "react-router-dom";
import Home from "./components/Home";

function App() {
  return (
    <div className="App">
      <NavBar />
      <Switch>
      <Route exact path="/" component={Home} />
      </Switch>
      <header className="App-header">
        <img src={logo} className="App-logo" alt="logo" />
        <p>
          Edit <code>src/App.js</code>
        </p>
      </header>

    </div>
  );
}

export default App;
