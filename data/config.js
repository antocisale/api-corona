const mysql = require('mysql');
const config = {
    host: 'localhost',
    user: 'root',
    password: 'root',
    database: 'CV1',
};

const pool = mysql.createPool(config);

module.exports = pool;