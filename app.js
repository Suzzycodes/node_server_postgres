const express = require('express');
const app = express();

// import the routes file
const routes = require("./routes/routes")
//const db = require("./services/dbConnect.js");
const bodyParser = require('body-parser');

const { pool } = require('./services/dbConnect')

//bodyparser configuration
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));

// register the routes 
app.use('/', routes);

module.exports = app;