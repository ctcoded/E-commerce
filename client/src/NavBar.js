import React from "react";
import { Menu, Icon, Button } from "semantic-ui-react";
import { Link } from "react-router-dom"
 
 
function Navbar({user, onLogout}) {
   function handleLogoutClick() {
       fetch(`/logout`, { method: "DELETE"}).then((r) => {
         if (r.ok) {
           onLogout(null);
         }
       })
   }
 
   return (
       <div className="navbar">
       <Menu>
         { user === null ? (
         <>
           <Menu.Item>
             <Link to="/">
               <Icon name="home" size="huge" color="yellow" />
             </Link>
           </Menu.Item>
           <Menu.Item>
             <Link to="/signup">
               <Button  color="yellow" size="huge">Sign Up</Button>
             </Link>
           </Menu.Item>
           <Menu.Item>
             <Link to="/login">
               <Button color="yellow" size="huge">Log In</Button>
             </Link>
           </Menu.Item>
        
         </>
       ) : (
         <>
           <Menu.Item>
             <Link to="/">
               <Icon color="yellow" name="home" size="huge" />
             </Link>
           </Menu.Item>
           <Menu.Item>
             <Link to="/inventory">
               <Button color="yellow" size="huge">
                  Inventory
                </Button>
             </Link>
           </Menu.Item>
           <Menu.Item>
             <Link to="/vendors">
               <Button color="yellow" size="huge">
                  Vendors
                </Button>
             </Link>
           </Menu.Item>
           <Menu.Item>
             <Link to="/purchaseOrders">
               <Button color="yellow" size="huge"> 
                  Purchase Orders
                </Button>
             </Link>
           </Menu.Item>
           <Menu.Item>
             <Button color="yellow" size="huge" onClick={handleLogoutClick}>
               Logout
             </Button>
           </Menu.Item>
         </>
     )}
     </Menu>
   </div>
     
          
   );
}
 
export default Navbar;