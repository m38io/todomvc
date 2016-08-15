var request = require("request"),
    assert = require('assert'),
    expect = require('expect'),
    server = require("../app.js"),
    base_url = "http://localhost:8080/";

describe("TodoMVC Server", function() {
  describe("GET /", function() {
    it("returns status code 200", function(done) {
      throw("foced to fail");
      request.get(base_url, function(error, response, body) {
        expect(response.statusCode).toBe(200);
        done();
      });
    });

    it("returns TodoMVC page", function(done) {
      request.get(base_url, function(error, response, body) {
        expect(body).toInclude("<title>React • TodoMVC</title>");
        done();
      });
    });
  });
});
