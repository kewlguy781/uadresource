import React, {Fragment} from 'react';
import logo from './logo.svg';
import './App.css';
import NavBar from "./components/Navbar";
import {Route, Switch} from "react-router-dom";
import Home from "./components/Home";



function App() {
  return (
    <div className="App">
      <Fragment>
      <NavBar />
      <Switch>
      <Route exact path="/" component={Home} />
      {/* <Route exact path="/login" component={Login} />
      <Route exact path="/register" component={Register} /> */}
      </Switch>
      <header className="App-header">
        <img src={logo} className="App-logo" alt="logo" />
        <p>
          Edit <code>src/App.js</code>
        </p>
      </header>
      </Fragment>
    </div>
  );
}

export default App;
