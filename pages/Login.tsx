import Link from "next/link";
import { useState } from "react";
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
} from "../components/Login/styles";
function Login() {
  const [email, setEmail] = useState('')
  const [password, setPassword] = useState('')

  const handleLogin = async () => {
    console.log(email, password);
  }

  return (
    <div className="background-image">
      <Container>
        <Title>Login</Title>
        <FormContainer>
          <InputContainer>
            <InputGroup>
              <Label>Email:</Label>
              <Input onChange={(e) => setEmail(e.target.value)} />
            </InputGroup>
            <InputGroup>
              <Label>Password:</Label>
              <Input onChange={(e) => setPassword(e.target.value)} />
            </InputGroup>
          </InputContainer>
        </FormContainer>
        <ButtonContainer>
          <Button onClick={() => handleLogin()}>Login</Button>
          <Link passHref legacyBehavior href={'Register'}><LinkComponent>Don't you have an account?</LinkComponent></Link>
        </ButtonContainer>
      </Container>
    </div>
  );
}

export default Login;
