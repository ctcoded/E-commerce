import React from "react"

function InventoryCard({name, description, image, on_hand, committed, total_sold}) {
    return (
        <div className="card">
        <h2>{name}</h2>
        <img src={image} alt={name} className="toy-avatar" />
        <p>{description} Description </p>
        <p>{on_hand} On hand</p>
        <p>{committed} committed</p>
        <p>{total_sold} total_sold</p>

        <button className="like-btn">
          Like 
        </button>
        <button className="del-btn">
          Donate to GoodWill
        </button>
      </div>
    );
    }

export default InventoryCard