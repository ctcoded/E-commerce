import React from "react";
import {useState, useEffect} from "react";
import {Route, Switch} from 'react-router-dom';
// import { Header} from 'semantic-ui-react'
// import webLogo from './public/mtnlogo.jpg'
import NavBar from './NavBar';
import Homepage from './Homepage';
import Login from './Login';
import PurchaseOrders from "./PurchaseOrders";
import SignUpForm from "./SignUpForm";
 
 
function App() {
 const [user, setUser] = useState(null)
 // const [inventory, setInventory] = useState([])
 useEffect(() => {
   fetch("/me")
     .then((r) => {
       if (r.ok) {
         r.json().then((user) => setUser(user));
       }
     });
 }, []);
 
 // useEffect(() => {
 //   fetch("/inventories")
 //     .then((r) => r.json())
 //     .then((inventories) => setInventory(inventories))
 // }, [])
  return (
   <div>
     <NavBar user={user} onLogout={setUser} />
     <main>
       {user ? (
         <Switch>
           <Route path="/">
             <Homepage user={user}/>
           </Route>
         </Switch>
       ) : (
         <Switch>
           <Route path="/signup">
             <SignUpForm setUser={setUser} />
           </Route>
           <Route path="/login">
             <Login setUser={setUser} />
           </Route>
           <Route path="/">
             <Homepage user={user}/> 
           </Route>
           <Route path="/purhcaseOrders">
             <PurchaseOrders />
           </Route>
         
         </Switch>
       )}
     </main>
   </div>
 );
}
 
export default App;