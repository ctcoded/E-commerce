import React from "react"

function Inventory({user}) {
    if(user) {
        return <h1>Hello {user.username} Inventory</h1>
    } else {
        return <h1>please log back in</h1>
    }
}



export default Inventory;