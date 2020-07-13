const express = require('express');
const bodyParser = require('body-parser');
const controllers = require('./controllers/index');

const app = express();

app.disable('x-powered-by');
app.set('port', process.env.PORT || 3000);
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: false }));

app.use(controllers);
module.exports = app;