var express = require('express'),
  helmet = require('helmet'),
  fs = require('fs'),
  http = require('http');

var app = express();
app.use(express.static('docs'));
app.use(require('helmet')());
app.enable('trust proxy');
http.createServer(app).listen(8080, function() {
  console.log('serve on http://0.0.0.0:8080');
  console.log('run docker on mac http://localhost');
});
