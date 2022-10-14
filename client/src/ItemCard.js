import React from "react"
import { Card, Button } from "semantic-ui-react"

function ItemCard({name, description, image, on_hand, committed, total_sold, vendor_id}) {
    // console.log({vendor_id})
    return (
        <Card.Group itemsPerRow={4}  className="card">
            <h2>{name}</h2>
            <img src={image} alt={name} className="card-avatar" />
            <p> Description: {description} </p>
            <p> On hand: {on_hand} </p>
            <p> committed: {committed} </p>
            <p> total_sold: {total_sold} </p>
            {/* <p> vendor Id: {vendor_id} </p> */}

            <Button className="like-btn">
            Add to Purchase Order 
            </Button>
            <Button className="del-btn">
            Delete from Inventory
            </Button>
        </Card.Group>
    );
    }

export default ItemCard;