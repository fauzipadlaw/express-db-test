const request = require('supertest')
const app = require('../src/index')

describe('pivot', function() {
  it('displays pivot costumers\' orders', function (done) {
    request(app).get('/pivot')
      .expect(200)
      .expect(/Pivot Customers/, done)
  })
})