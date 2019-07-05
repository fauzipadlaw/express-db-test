const request = require('supertest')
const app = require('../src/index')

describe('index', function() {
  it('displays costumers\' orders', function (done) {
    request(app).get('/')
      .expect(200)
      .expect(/Customers/, done)
  })
})