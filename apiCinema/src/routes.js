import express from "express";
import userRoutes from "./controllers/userController.js"

const routes = express()
routes.use('/user', userRoutes) // creates an endpoint for the user routes

export default routes