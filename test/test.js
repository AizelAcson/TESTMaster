// Simple async test for HTTP 200 response code using supertest
'use strict';

var request = require("supertest"),
	app = require("C:\"User\"bam\"gpgkey\"Masterfolder\"app.js").getApp;

describe('GET C:\"User\"bam\"gpgkey\"Masterfolder\"app.js', function(){
	it('expects HTTP response 200', function(done){
	request(app)
	.get('C:\"User\"bam\"gpgkey\"Masterfolder\"app.js')
	.expect(200,done);
	});
});