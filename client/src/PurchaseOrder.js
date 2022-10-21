import React from "react"
import { Dropdown } from 'semantic-ui-react'
import PurchaseOrderCard from "./PurchaseOrderCard"

function PurchaseOrders({user, purchaseOrders}) {
    console.log(purchaseOrders)

    const orderNotes = purchaseOrders.map(notes => notes.order_notes).forEach( note => {
        <Dropdown.Item
            text = {note}
        />
    });

    return (
       <Dropdown 
        placeholder="Select Purchase Order"
        fluid
        selection
        >
            <Dropdown.Menu>{orderNotes}</Dropdown.Menu>
        </Dropdown>
        
    )

    // const poCards = purchaseOrders.map((order) => (
    //     <PurchaseOrderCard
    //         key={order.id}
    //         order_notes={order.order_notes}
    //     />

    // ))
    // if (user !== null ){

    //     return <div id="item-collection">{poCards}</div>
    // } else {
    //     return (
    //     <h1>Uh oh, it looks like you've been logged out! Please log back in</h1>
    //     )
    // }
}

export default PurchaseOrders;