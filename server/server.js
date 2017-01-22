var express = require("express");
var app = express();

// add static assets
app.use(express.static('static'))

// define routes
app.get("/", function(req, res) {
  res.sendFile(__dirname + '/templates/wrapper.html')
});

app.get("/audio-input", function(req, res) {
  res.sendFile(__dirname + '/templates/audio-input.html')
});

app.listen(8080);

console.log("Server listening on port 8080");
