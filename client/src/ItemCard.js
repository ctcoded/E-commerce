import React from "react"
import { Card, Button, Image } from "semantic-ui-react"

function ItemCard({name, description, image, on_hand, committed, total_sold, vendor_id}) {
    // console.log({vendor_id})
    return (
        <Card>
            <Card.Content>
                <Image floated='center' size='mini' src={image} alt={name} className="card-avatar" />
                <Card.Header>{name}</Card.Header>
                <Card.Description> Description: {description} </Card.Description>
                <Card.Description> On hand: {on_hand} </Card.Description>
                <Card.Description> committed: {committed} </Card.Description>
                <Card.Description> total_sold: {total_sold} </Card.Description>
                {/* <p> vendor Id: {vendor_id} </p> */}
                </Card.Content>
                <Card.Content extra>
                    <div className='ui two buttons'>
                        <Button color = 'red' className="del-btn">
                            Delete from Inventory
                        </Button>
                        <Button color = 'yellow' className="like-btn">
                            Add to PO 
                        </Button>                            
                    </div>
            </Card.Content>
        </Card>
    );
    }

export default ItemCard;