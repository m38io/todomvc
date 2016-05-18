var fs = require('fs');
var path = require('path');
var getopt = require('posix-getopt');
var restify = require('restify');

(function main() {

    // Create Server
    var server = restify.createServer({
        name: 'todomvc',
        version: '1.0.0'
    });

    // Ensure only JSON formatted requests are sent through
    server.pre(function (req, res, next) {

        if (req.url == '/') {
            req.url = '/index.html'
        }
        return next();
    });

    // Configure server listening port
    server.listen(8080, function () {
        console.log('%s listening at %s', server.name, server.url);
    });

    // Parses out the Accept header, and ensures that the server can respond to what the client asked for
    server.use(restify.acceptParser(server.acceptable));

    // Parses out the HTTP Date header (if present) and checks for clock skew
    server.use(restify.dateParser());

    // Parses the HTTP query string (i.e., /foo?id=bar&name=mark
    server.use(restify.queryParser({mapParams: true}));

    // Configure body parse to allow reading the payload
    server.use(restify.bodyParser({mapParams: true}));

    // Enable CORS support
    server.pre(restify.CORS({
        origins: ['*']
    }));

    // Serve static page
    server.get(/\/*/, restify.serveStatic({
        directory: './public',
    }));
})();
