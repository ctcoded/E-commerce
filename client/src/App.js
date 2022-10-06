import React from "react";
import {useState, useEffect} from "react";
import { Route, Switch} from 'react-router-dom';
import { Header} from 'semantic-ui-react'
import NavBar from './NavBar';
import Homepage from './Homepage';
import Login from './Login';
import PurhcaseOrders from "./PurchaseOrders";


function App() {
  useEffect(() => {
    fetch("/users")
      .then((r) => r.json())
      .then((users) => console.log(users));
  }, [])

  useEffect(() => {
    fetch("/inventories")
      .then((r) => r.json())
      .then((inventories) => console.log(inventories))
  })
  return (
    <div>
      <Header as='h2' icon>
        {/* <img id="banner-img" src="/logo.jpg" alt="banner" className="center"/> */}
        Account settings
        <Header.Subheader>
          Mange your account settings and set e-mail preferences.
        </Header.Subheader>
      </Header>
      <NavBar />
      <Switch>
        <Route exact path="/login">
          <Login />
        </Route>
        <Route exact path="/purchaseorders">
          <PurhcaseOrders />
        </Route>
        <Route exact path="/">
          <Homepage />
        </Route>
      </Switch>
    </div>
  );
}

export default App;
