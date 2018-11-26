var express = require('express')
var app = express();
var http = require('http').Server(app);

app.use(express.static('public'));

app.get('/', function(req, res){
  res.sendFile(__dirname + '/public/index.html');
});

http.listen(8060, function(){
  console.log('listening on *:8060');
});