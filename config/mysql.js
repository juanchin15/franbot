const mysql      = require('mysql');
const connection = mysql.createConnection({
  host     : process.env.SQL_HOST || 'localhost',
  user     : process.env.SQL_USER || 'root',
  password : process.env.SQL_PASS || 'Xoongee3Kair4ohshah3laiD3EiGhahT',
  database : process.env.SQL_DATABASE || 'frandb'
});

const connect = () => connection.connect(function(err) {
    if (err) {
        console.error('error connecting: ' + err.stack);
        return;
    }

    console.log('Conexion correcta con tu base de datos MySQL')
});

module.exports = {connect, connection}