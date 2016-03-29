// Express JS for routing
var app = require('express')();
var http = require('http').Server(app);

// Socket.io for realtime websockets
var io = require('socket.io')(http);

// Routes are passed to index.html
app.get('/background/:color', function(req, res){
  res.sendFile(__dirname + '/routes/index.html');
});

// Handling Socket messages
io.on('connection', function (socket) {
	socket.on('change-background', function(color){
		console.log('Color : ' + color);

		// Emit a message to client connected with color param
		socket.emit('background-change', color);
	});
});

http.listen(3000, function(){
  console.log('listening on *:3000');
});