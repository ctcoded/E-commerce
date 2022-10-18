import React, {useState} from "react";
import { Button, Form, Grid, Header, Image, Message, Segment} from 'semantic-ui-react'
import { Link } from 'react-router-dom'
 
function Login({setUser}) {
 const [username, setUsername] = useState("")
 const [password, setPassword] = useState("")
 
 function handleSubmit(e) {
   e.preventDefault();
  //  const user = {
  //    username,
  //    password
  //  }
    const user = {
      username,
      password
    }
   fetch(`/login`, {
     method: "POST",
     headers: {
       "Content-Type": "application/json",
     },
     body: JSON.stringify(user),
   })
   .then(r => {
     if (r.ok) {
       r.json().then((user) => setUser(user))
     }
   });
 }
   return (
    <Grid textAlign="center" style={{height:'100vh'}} verticalAlign="middle">
      <Grid.Column style={{maxWidth: 450}}>
        <Header as='h2' color='red' textAlign='center'>
          <Image src="/mtnlogo2.jpg" /> Log-in to your account
        </Header>
        <Form onSubmit={handleSubmit} size='large'>
          <Segment stacked>
            <Form.Input 
              fluid 
              icon="user" 
              iconPosition='left' 
              placholder='E-mail address' 
              onChange={(e) => setUsername(e.target.value)}
            />
            <Form.Input
              fluid
              icon='lock'
              iconPosition="left"
              placholder='Password'
              type="password"
              onChange={(e) => setPassword(e.target.value)}
            />

            <Button color='red' fluid size='large' type="submit">
              Login
            </Button>
          </Segment>
        </Form>
        <Message>
          New to us? <Link to="/signup">Sign up</Link>
        </Message>
      </Grid.Column>
    </Grid>
  //    <div className="login form">
  //      <form onSubmit={handleSubmit}>
  //        <h1>Login</h1>
  //          <label htmlFor="username">Username</label>
  //          <input
  //            type="text"
  //            id="username"
  //            autoComplete="off"
  //            value={username}
  //            onChange={(e) => setUsername(e.target.value)}
  //          />
  //          <label htmlFor="password">Password</label>
  //            <input
  //              type="password"
  //              id="password"
  //              autoComplete="current-password"
  //              value={password}
  //              onChange={(e) => setPassword(e.target.value)}
  //            />
  //            <button type="submit">Login</button>
  //      </form>
  //    </div>
   );
}
 
export default Login;