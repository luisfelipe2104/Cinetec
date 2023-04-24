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
  Link,
} from "./styles";
function Login() {
  return (
    <div className="background-image">
      <Container>
        <Title>Login</Title>
        <FormContainer>
          <InputContainer>
            <InputGroup>
              <Label>Email:</Label>
              <Input />
            </InputGroup>
            <InputGroup>
              <Label>Password:</Label>
              <Input />
            </InputGroup>
          </InputContainer>
        </FormContainer>
        <ButtonContainer>
          <Button>Login</Button>
          <Link>Don't you have an account?</Link>
        </ButtonContainer>
      </Container>
    </div>
  );
}

export default Login;
