const express = require("express");
require("dotenv").config();

// middlewares
const app = express();
app.use(express.urlencoded({ extended: true }));
app.use(express.json());

// constants
const port = process.env.PORT;

// routes
app.get("/", (req, res, next) => {
  return res.json({ teamName: "Betaoverflow" });
});

app.listen(port, () => {
  console.log("Server running at " + port);
});
