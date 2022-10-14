import React from "react";
 
function Homepage({user}) {
   if (user) {
       return <h1>Welcome to this app {user.username}!</h1>
   } else {
       return <h1>Please login or signup to access our features</h1>
   }
}
 
export default Homepage;
