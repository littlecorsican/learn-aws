// Require http header
var http = require('http');
 console.log("procccc")
// Create server
http.createServer(function (req, res) {
    console.log("server proccc")
    // HTTP Status: 200 : OK
    // Content Type: text/html
    res.writeHead(200, {'Content-Type': 'text/html'});
    
    // Send the response body as &quot;Hello World!&quot;  
    res.end('Hello World!');

}).listen(8080);
