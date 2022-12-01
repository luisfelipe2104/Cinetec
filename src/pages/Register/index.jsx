import React from 'react'
import background from '../../assets/images/background.webp'
import './styles.css'

function Register() {
  return (
    <div className='registerContainer'>
      <div className="containerInput">
        <h1 className='registerTitle'>Cadastro</h1>
        <div class="form-group">
            <label for="exampleInputName labelText">Name</label>
            <input type="text" class="form-control inputStyle" id="exampleInputName" placeholder="Name" />
          </div>
        <div class="form-group">
            <label for="exampleInputEmail1 labelText">Email address</label>
            <input type="email" class="form-control inputStyle" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email" />
          </div>

        <div className="containerPassword">
          <div class="form-group">
            <label for="exampleInputPassword1 labelText">Password</label>
            <input type="password" class="form-control inputStyle" id="exampleInputPassword1" placeholder="Password" />
          </div>
          <div class="form-group">
            <input type="password" class="form-control inputStyle" id="exampleInputPassword1" placeholder="Confirm password..." />
          </div>
        </div>

        <div className="userTypeContainer">
        <label for="inlineFormCustomSelectPref labelText">User Type</label> 
          <select class="custom-select my-1 mr-sm-2" id="inlineFormCustomSelectPref">
            <option selected>Choose...</option>
            <option value="Admin">Admin</option>
            <option value="Comum">Comum</option>
          </select>

        </div>
    <div className="containerButton">
          <button type="submit" class="btn btn-primary summitButton">Submit</button>
    </div>
        </div>
    </div>
  )
}

export default Register