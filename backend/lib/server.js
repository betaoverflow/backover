const express = require("express");
const cors = require("cors");

require("dotenv").config();

// database connection
const database = require("../database/db");

// middlewares
const app = express();

app.use(cors());
app.use(express.urlencoded({ extended: true }));
app.use(express.json());

// constants
const port = process.env.PORT;

// routes
var routes = require("../routes/routes");
app.use("/", routes);

app.listen(port, () => {
  console.log("Server running at " + port);
});
