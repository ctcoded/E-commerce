import React from "react";
import {useState, useEffect} from "react";
import {BrowserRouter as Router, Route, Routes} from 'react-router-dom';
// import { Header} from 'semantic-ui-react'
// import webLogo from './public/mtnlogo.jpg'
import NavBar from './NavBar';
import Homepage from './Homepage';
import Login from './Login';
import PurchaseOrders from "./PurchaseOrders";
import SignUpForm from "./SignUpForm";
import Inventory from "./Inventory"
 
 
function App() {
 const [user, setUser] = useState(null)
 const [inventory, setInventory] = useState([])
//  useEffect(() => {
//   if(user !== null) {
//    fetch("/me")
//      .then((r) => {
//        if (r.ok) {
//          r.json().then((user) => setUser(user));
//        }
//      });
//     }
//  }, []);

 useEffect(() => {
  if(user !== null) {
    fetch(`/inventories/${user.id}`)
    .then(res => res.json())
    .then((inventory) => setInventory(inventory))
  }
 }, [user])

 console.log(inventory)



 return (
  <div>
    <Router >
      <div className="App">
        <NavBar user={user} onLogout={setUser}/>
        <Routes>
          <Route path="/" element={<Homepage user={user}/>}/>
          <Route path="/purhcaseOrders" element={<PurchaseOrders />}/>
          <Route path="/inventory" element={<Inventory user={user} inventory={inventory} />}/>
          <Route path="/signup" element={<SignUpForm setUser={setUser} />}/>
          <Route path="/login" element={<Login setUser={setUser} />} />
        </Routes>
      </div>
    </Router>
  </div>
 );
}
 
export default App;