import React from "react";
import { Menu, Icon, Button } from "semantic-ui-react";
import { Link} from "react-router-dom"


function Navbar({}) {
    function handleLogoutClick() {
        "hello"
    }

    return (
        <div>
        <Menu>
        <>
          <Menu.Item>
            <Link to="/">
              <Icon name="home" size="huge" />
            </Link>
          </Menu.Item>
          <Menu.Item>
            <Link to="/users/new">
              <Button  color="blue" size="huge">Sign Up</Button>
            </Link>
          </Menu.Item>
          <Menu.Item>
            <Link to="/login">
              <Button color="blue" size="huge">Log In</Button>
            </Link>
          </Menu.Item>
         
        </>
      ) : ( 
        <>
          <Menu.Item>
            <Link to="/">
              <Icon name="home" size="huge" />
            </Link>
          </Menu.Item>
          <Menu.Item>
            <Link to="/Inventory">
              <Button color="blue" size="huge">Inventory</Button>
            </Link>
          </Menu.Item>
          <Menu.Item>
            <Link to="/PurhcaseOrders">
              <Button color="blue" size="huge">Purchase Orders</Button>
            </Link>
          </Menu.Item>
          
          <Menu.Item>
            <Button variant="outline" onClick={handleLogoutClick}>
              Logout
            </Button>
          </Menu.Item>
        </>
    )
    </Menu>
    </div>
       
            
    );
}

export default Navbar;