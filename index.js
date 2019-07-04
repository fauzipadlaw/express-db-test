require('dotenv').config()

const express = require('express')
const path = require('path')
const hbs = require('hbs')
const bodyParser = require('body-parser')
const mysql = require('mysql')
const app = express()

// database configuration
const connection = mysql.createConnection({
  host: process.env.DB_HOST,
  user: process.env.DB_USER,
  password: process.env.DB_PASSWORD,
  database: process.env.DB_NAME
});

// connect to database
connection.connect((err) =>{
  if(err) throw err
  console.log('Mysql Connected...')
});

//set views directory, view engine, body parser, add static dir for bootstrap
app.set('views',path.join(__dirname,'views'))
app.set('view engine', 'hbs')
app.use(bodyParser.json())
app.use(bodyParser.urlencoded({ extended: false }))
app.use(express.static(__dirname + '/node_modules/bootstrap/dist'))
hbs.registerHelper('json', function(context) {
  return JSON.stringify(context);
});

app.get('/',(req, res) => {
  let sql = "SELECT id, CONCAT(first_name, ' ', last_name) AS full_name, email, item, quantity, total_price FROM customers";
  let query = connection.query(sql, (err, results) => {
    if(err) throw err;
    res.render('index',{
      results: results,
      string_results: JSON.stringify(results)
    });
  });
});

app.get('/pivot',(req, res) => {
  let sql = `SELECT CONCAT(c.first_name, ' ', c.last_name) AS full_name, c.email, 
   SUM(CASE WHEN (c.item='Barang1') THEN c.quantity ELSE 0 END) AS barang1, 
   SUM(CASE WHEN (c.item='Barang2') THEN c.quantity ELSE 0 END) AS barang2, 
   SUM(CASE WHEN (c.item='Barang3') THEN c.quantity ELSE 0 END) AS barang3, 
   SUM(CASE WHEN (c.item='Barang4') THEN c.quantity ELSE 0 END) AS barang4, 
   SUM(CASE WHEN (c.item='Barang5') THEN c.quantity ELSE 0 END) AS barang5, 
   SUM(CASE WHEN (c.item='Barang6') THEN c.quantity ELSE 0 END) AS barang6, 
   SUM(CASE WHEN (c.item='Barang7') THEN c.quantity ELSE 0 END) AS barang7, 
   SUM(CASE WHEN (c.item='Barang8') THEN c.quantity ELSE 0 END) AS barang8, 
   SUM(CASE WHEN (c.item='Barang9') THEN c.quantity ELSE 0 END) AS barang9, 
   SUM(CASE WHEN (c.item='Barang10') THEN c.quantity ELSE 0 END) AS barang10 
   FROM customers c JOIN customers c2 ON c.email = c2.email AND c.item=c2.item GROUP by c.email`;
  let query = connection.query(sql, (err, results) => {
    if(err) throw err;
    res.render('pivot',{
      results: results,
      string_results: JSON.stringify(results)
    });
  });
});

// start server
app.listen(3333, () => {
  console.log('Server is running on port 3333');
});