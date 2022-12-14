const express = require('express')
var cors = require('cors')
const mysql = require('mysql')
const app = express()
const port = 3000
app.use(express.static('videokartya_kepek'))
app.use(express.static('gephaz_kepek'))
app.use(cors())
app.use(express.json())
//------------------------minden videókártya lekérdezés minden adattal
app.get('/videokartya', (req, res) => {
    const mysql = require('mysql')
    const connection = mysql.createConnection({
      host: 'localhost',
      user: 'root',
      password: '',
      database: 'pcosszerako_kif'
    })
    
    connection.connect()
    
    connection.query('SELECT * from videokartya', (err, rows, fields) => {
      if (err) throw err
    
      res.send(rows)
    })
    
    connection.end()
  })

//------------------------minden gépház lekérdezés minden adattal 
  app.get('/gephaz', (req, res) => {
    const mysql = require('mysql')
    const connection = mysql.createConnection({
      host: 'localhost',
      user: 'root',
      password: '',
      database: 'pcosszerako_kif'
    })
    
    connection.connect()
    
    connection.query('SELECT * from gephaz', (err, rows, fields) => {
      if (err) throw err
    
      res.send(rows)
    })
    
    connection.end()
  })
//------------------------minden háttértár lekérdezés minden adattal 
app.get('/hattertar', (req, res) => {
  const mysql = require('mysql')
  const connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'pcosszerako_kif'
  })
  
  connection.connect()
  
  connection.query('SELECT * from hattertar', (err, rows, fields) => {
    if (err) throw err
  
    res.send(rows)
  })
  
  connection.end()
})
//------------------------minden memória lekérdezés minden adattal 
app.get('/memoria', (req, res) => {
  const mysql = require('mysql')
  const connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'pcosszerako_kif'
  })
  
  connection.connect()
  
  connection.query('SELECT * from memoria', (err, rows, fields) => {
    if (err) throw err
  
    res.send(rows)
  })
  
  connection.end()
})

//-------------------------videókártya szűrés
app.post('/szavazat', (req, res) => {
  kapcsolat()
  connection.query('insert into szavazat values (null, '+req.body.bevitel1+')', (err, rows, fields) => {
    if (err) console.log(err)
  else
  res.send("Sikerült a felvitel!")
  })
  connection.end()
}) 


app.listen(port, () => {
  console.log(`Example app listening on port ${port}`)
})
