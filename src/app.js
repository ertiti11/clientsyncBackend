const express = require("express");
const cors = require("cors");
const morgan = require("morgan");
const app = express();
const routes = "./routes/works.route.js";

app.use(cors());
app.use(morgan("dev"));

app.use("/", routes);

module.exports = app;
