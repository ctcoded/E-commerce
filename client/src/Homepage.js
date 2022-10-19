import React from "react";
 
function Homepage({user}) {
   if (user) {
       return (
        <div className="homepage">
            <h1>Welcome to this app {user.username}!</h1>
        </div>
       )
   } else {
       return (
        <div className="homepage">
            <h1>Please login or sign up to user our services</h1>
        </div>
       )
   }
}
 
export default Homepage;
