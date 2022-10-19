import React from "react"
import { Card, Button } from "semantic-ui-react"


function PurchaseOrderCard({id, order_notes, items}) {
    return (
        <Card>
            <Card.Content>
                <Card.Header>{id}</Card.Header>
                <Card.Description> Order Notes: {order_notes} </Card.Description>
                {/* <Card.Description> order items: {items} </Card.Description> */}
                </Card.Content>
                <Card.Content extra>
                    <div className='ui two buttons'>
                        <Button color = 'red' className="del-btn">
                            Delete from Inventory
                        </Button>
                        <Button color = 'yellow' className="like-btn">
                            Receive Order 
                        </Button>                            
                    </div>
            </Card.Content>
        </Card>
);
}

export default PurchaseOrderCard;