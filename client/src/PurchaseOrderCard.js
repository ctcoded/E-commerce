import React from "react"
import { useEffect } from "react"
import { Card, Button } from "semantic-ui-react"


function PurchaseOrderCard({order_notes}) {
    // function orders () {
    //     useEffect(() => {
    //         fetch(`/`)
    //     })
    // }
    return (
        <Card>
            <Card.Content>
                <Card.Header>{order_notes}</Card.Header>
                </Card.Content>
                <Card.Content extra>
                    <div className='ui two buttons'>
                        <Button color = 'red' className="del-btn" onClick= {console.log('hello')}>
                           Inspect Order
                        </Button>
                                                 
                    </div>
            </Card.Content>
        </Card>
);
}

export default PurchaseOrderCard;