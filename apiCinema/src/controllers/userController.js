import express from "express";
import {} from '../services/userService.js'

const routes = express.Router()

routes.post("/create-user", async (req, res) => {
  const {name, email, password, typeUser} = req.body  // gets the data from the json body received from the frontend
  console.log(name, email, password, typeUser)
})

export default routes