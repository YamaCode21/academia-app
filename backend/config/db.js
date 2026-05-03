const mysql = require('mysql2');

const db = mysql.createConnection({
  host: 'localhost',
  user: "root",
  password: "",
  database: "gestion_academica"
});

db.connect((err) => {
  if(err) {
    console.log("Error conexion:", err);
    return;
  }

  console.log("MySQL conectado");
});

module.exports = db;