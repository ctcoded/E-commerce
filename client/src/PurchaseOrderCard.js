import React from "react"
import { Card, Button } from "semantic-ui-react"


function PurchaseOrderCard({name, description, on_hand, committed, total_sold, vendor_id}) {
    return (
        <Card>
            <Card.Content>
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
                           something else
                        </Button>
                        <Button color = 'yellow' className="like-btn">
                            Add to Inventory
                        </Button>                            
                    </div>
            </Card.Content>
        </Card>
);
}

export default PurchaseOrderCard;