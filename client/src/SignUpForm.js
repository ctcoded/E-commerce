import React, { useState } from "react";
import {Button, Form, Dropdown, Input, Icon, TextArea, Label, Message } from 'semantic-ui-react';
 
function SignUpForm({setUser}) {
   const [username, setUsername] = useState("")
   const [password, setPassword] = useState("")
   // const [name, setName] = useState("")
 
   function handleSubmit(e) {
       e.preventDefault();
           fetch("/signup", {
               method: 'POST',
               headers:{'Content-Type': 'application/json'},
               body:JSON.stringify({
                   username,
                   password,
               }),
           })
           .then((r) => {
               if (r.ok) {
                   r.json().then((user) => setUser(user));
               }
           })
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
          
               <Button color="pink" size="huge" type='submit'>Submit</Button>
           </Form>
       </div>
       )
}
 
 
export default SignUpForm;