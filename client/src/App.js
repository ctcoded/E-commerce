import React from "react";
import {useState, useEffect} from "react";
import {BrowserRouter as Router, Route, Routes} from 'react-router-dom';
// import { Header} from 'semantic-ui-react'
import {Image} from 'semantic-ui-react'
import NavBar from './NavBar';
import Homepage from './Homepage';
import Login from './Login';
import Vendors from "./Vendors";
import SignUpForm from "./SignUpForm";
import Inventory from "./Inventory"
import PurchaseOrders from "./PurchaseOrder";
 
 
function App() {
 const [user, setUser] = useState(null)
 const [inventory, setInventory] = useState([])
 const [vendors, setVendors] = useState("")
 const [purchaseOrders, setPurchaseOrders] = useState([])
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

 useEffect(() => {
  if(user !== null) {
    fetch(`/vendors/${user.id}`)
    .then(res => res.json())
    .then((vendor) => setVendors(vendor))
  }
 }, [user])

 useEffect(() => {
  if(user !== null) {
    fetch(`/user/${user.id}`)
    .then(res => res.json())
    .then((purchaseOrder) => setPurchaseOrders(purchaseOrder))
  }
 }, [user])

 console.log(purchaseOrders)

//  console.log(vendors)

//  console.log(inventory)



 return (
  <div className="app">
    <h1><Image src="/mtnlogo2.jpg" width="300" height="300"/>Website Title</h1>
    <Router >
      <div className="inner-app">
        <NavBar className="app-navbar" user={user} onLogout={setUser}/>
        <Routes>
          <Route path="/login" element={<Login setUser={setUser} />} />
          <Route path="/" element={<Homepage user={user}/>}/>
          <Route path="/vendors" element={<Vendors user={user} vendor={vendors}/>}/>
          <Route path="/inventory" element={<Inventory user={user} inventory={inventory} />}/>
          <Route path="/purchaseOrders" element={<PurchaseOrders user={user} purchaseOrders={purchaseOrders}/>}/>
          <Route path="/signup" element={<SignUpForm setUser={setUser} />}/>
        </Routes>
      </div>
    </Router>
  </div>
 );
}
 
export default App;