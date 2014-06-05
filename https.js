#!/usr/bin/env node

// https and filesystem modules
var https = require('https');
var fs = require('fs');

// cert options, must create certs with gencert.sh first
var options = {
  key: fs.readFileSync('key.pem'),
  cert: fs.readFileSync('cert.pem')
};

// starting server on port 8000
var a = https.createServer(options, function (req, res) {
  res.writeHead(200);
  res.end("hello world\n");
}).listen(8000);
