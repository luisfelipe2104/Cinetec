import express from "express";
import cors from "cors"
import routes from "./routes.js";
// index => configs
// routes => request's distributions
// controller => data validation, business rules are applied here
// services => requests to the database, here we build the querys
// repository => connection with the database

// npm install -g nodemon
// netlify api

const app = express();
app.use(express.json()) // informs the type of communication between front and back
app.use(cors())
app.use('/', routes)  // gets all the endpoints from the routes
const PORT = process.env.PORT || 3333 

app.listen(PORT, () =>{
  console.log(`running in the port: ${PORT}`);
});