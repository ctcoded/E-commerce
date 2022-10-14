import React from "react"
import ItemCard from "./ItemCard"
import { Dropdown } from "semantic-ui-react"

function Inventory({user, inventory}) {
    console.log(inventory)
    const itemCards = inventory.map((item) => (
        <ItemCard
            key={item.id}
            name={item.name}
            description={item.description}
            image={item.image}
            on_hand={item.on_hand}
            committed={item.committed}
            total_sold={item.total_sold}
        />

    ))
    if (user !== null ){

        return <div id="item-collection">{itemCards}</div>
    } else {
        <h1>please log back in</h1>
    }
}



export default Inventory;