import express from "express";
import db from '../services/userService.js'

const routes = express.Router()

routes.post("/create-user", async (req, res) => {
  const {name, email, password, typeUser} = req.body  // gets the data from the json body received from the frontend
  
  if(name === '') {
    return res.status(400).send({msg : "nome não pode ser vazio"})
  }
  
  try{
    await db.createUser(name, email, password, typeUser)
    
    res.status(200).send("Finalmente Funcionou!")
  }
  catch(e){
    res.status(500).send(e)
  }

})

export default routes;

// {
//   "name": "Lulu",
//    "email" : "sla@gmail.com",
//    "password": "sla123",
//    "typeUser": "comum"
// }