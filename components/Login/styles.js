import styled from "styled-components"

export const Container = styled.div`
    background-color: rgba(0,0,0, 0.4);
    background-position: center;
    background-size: cover;
    position: relative;
    display: flex;
    height: 90vh;
    width: 80%;
    max-width: 400px;
    border-width: 0px;
    border-radius: 15px;
    flex-direction: column;
    padding: 0 20px;
    justify-content: space-between;
`

export const Title = styled.h1`
    text-align: center;
    width: 100%;
    padding: 20px 0 0 0;
    font-size: 40px;
`

export const InputGroup = styled.div`
    display: flex;
    align-items: center;
    width: 100%;
    justify-content: center;
    gap: 5px;
`

export const InputContainer = styled.div`
    display: flex;
    flex-direction: column;
    gap: 5vh;
`

export const FormContainer = styled.div`
    width: 100%;
    display: flex;
    justify-content: space-between;
    flex-direction: column;
    /* margin-top: -20%; */
`

export const Input = styled.input`
    font-size: 20px;
    padding: 2px 5px;
    border-radius: 6px;
    background-color: transparent;
    width: inherit;
`

export const Label = styled.label`
    font-size: 16px;
`

export const ButtonContainer = styled.div`
    display: flex;
    width: 100%;
    flex-direction: column;
    align-items: center;
    padding-bottom: 30px;
    gap: 20px;
`

export const Button = styled.button`
    font-size: 20px;
    padding: 8px 15px;
    border-radius: 7px;
`

export const Link = styled.a`
    font-size: 16px;
`