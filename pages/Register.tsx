import Link from 'next/link'
import {
    Container,
    Title,
    Input,
    InputGroup,
    InputContainer,
    Label,
    FormContainer,
    ButtonContainer,
    Button,
    Link as LinkComponent,
  } from "../components/Register/styles";
import { useState } from 'react';
  function Register() {
    const [name, setName] = useState('')
    const [email, setEmail] = useState('')
    const [password, setPassword] = useState('')

    const handleRegister = async () => {
      console.log(name, email, password)
    }

    return (
      <div className="background-image">
        <Container>
          <Title>Register</Title>
          <FormContainer>
            <InputContainer>
              <InputGroup>
                <Label>Name:</Label>
                <Input onChange={(e) => setName(e.target.value)} />
              </InputGroup>
              <InputGroup>
                <Label>Email:</Label>
                <Input onChange={(e) => setEmail(e.target.value)} />
              </InputGroup>
              <InputGroup>
                <Label>Password:</Label>
                <Input onChange={(e) => setPassword(e.target.value)} />
              </InputGroup>
              <InputGroup>
                <Label>User Type:</Label>
                <Input />
              </InputGroup>
            </InputContainer>
          </FormContainer>
          <ButtonContainer>
            <Button onClick={() => handleRegister()}>Register</Button>
            <Link passHref legacyBehavior href='/Login'><LinkComponent>already have an account?</LinkComponent></Link>
          </ButtonContainer>
        </Container>
      </div>
    );
  }
  
  export default Register;
  