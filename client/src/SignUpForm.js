import React, { useState } from "react";
import {Button, Form, Input, Label } from 'semantic-ui-react';
 
function SignUpForm({setUser}) {
   const [username, setUsername] = useState("")
   const [password, setPassword] = useState("")
   const [businessName, setBusinessName] = useState("") 
   function handleSubmit(e) {
       e.preventDefault();
       const user = {
        username,
        password,
        businessName
       }
           fetch("/signup", {
               method: 'POST',
               headers:{'Content-Type': 'application/json'},
               body:JSON.stringify( user ),
           })
           .then((r) => {
               if (r.ok) {
                   r.json().then((user) => setUser(user));
               }
           })
           console.log(user)
       }

 
       return (
       <div>
           <Form onSubmit={handleSubmit}>
               <Form.Field>
                   <Label color="blue" size="huge" pointing="below" htmlFor="username">Username</Label>
                   <Input
                       size="huge"
                       placeholder="Username"
                       type="text"
                       id="username"
                       value={username}
                       onChange={(event) => setUsername(event.target.value)}
                   />
               </Form.Field>
               <Form.Field>
                   <Label color="blue" size="huge" pointing="below" htmlFor="password">Password</Label>
                   <Input
                       size="huge"
                       placeholder="Password"
                       type="text"
                       id="password"
                       value={password}
                       onChange={(event) => setPassword(event.target.value)}
                   />
               </Form.Field>
               <Form.Field>
                   <Label color="blue" size="huge" pointing="below" htmlFor="business_name">Business Name</Label>
                   <Input
                       size="huge"
                       placeholder="Business Name"
                       type="text"
                       id="business_name"
                       value={businessName}
                       onChange={(event) => setBusinessName(event.target.value)}
                   />
               </Form.Field>
          
               <Button color="pink" size="huge" type='submit'>Submit</Button>
           </Form>
       </div>
       )
}
 
 
export default SignUpForm;