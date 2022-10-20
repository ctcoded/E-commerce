import React from "react"
import PurchaseOrderCard from "./PurchaseOrderCard"

function PurchaseOrders({user, purchaseOrders}) {

    const itemCards = purchaseOrders.map((item) => (
        <PurchaseOrderCard
            key={item.id}
            name={item.name}
            description={item.description}
            image={item.image}
            on_hand={item.on_hand}
            committed={item.committed}
            total_sold={item.total_sold}
            vendor_id={item.vendor_id}
        />

    ))
    if (user !== null ){

        return <div id="item-collection">{itemCards}</div>
    } else {
        return (
        <h1>Uh oh, it looks like you've been logged out! Please log back in</h1>
        )
    }
}

export default PurchaseOrders;