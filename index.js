const express = require("express");
const bodyParser = require('body-parser');
const app = express();

const pool = require('./data/config');

const { body, check, validationResult } = require('express-validator');

app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());


let respuesta = {
    error: false,
    codigo: 200,
    mensaje: ''
};

app.get('/', function(req, res) {
    respuesta = {
        error: true,
        codigo: 200,
        mensaje: 'Use "/infected" or "/countries" to see the data'
    };
    res.send(`Error. ${respuesta.mensaje}. Code ${respuesta.codigo}`);
});

app.get('/infected', (req, res) => {
    pool.query('SELECT * FROM `infected`', (error, result) => {
        if (error) throw error;

        res.send(result);
    });
});

app.get('/countries', (req, res) => {
    pool.query('SELECT * FROM `infected countries`', (error, result) => {
        if (error) throw error;

        res.send(result);
    });
});

app.post('/infected',[
    body('first_name')
    .not().isEmpty()
    .withMessage('First Name cannot be empty'),
    body('last_name')
    .not().isEmpty()
    .withMessage('Last Name cannot be empty'),
    body('country')
    .not().isEmpty()
    .withMessage('Country cannot be empty'),
    body('live')
    .not().isEmpty()
    .isBoolean(),
    body('female')
    .not().isEmpty()
    .isBoolean(),
    body('age')
    .not().isEmpty()
    .isDecimal()
    .withMessage('Age only accept numbers')
], (req, res) => {
    const errors = validationResult(req);
    if (!errors.isEmpty()) {
    return res.status(422).json({ errors: errors.array() })
    };
    pool.query('INSERT INTO `infected` SET ?', req.body, (error, result) => {
        if (error) throw error;

        res.status(201).send(`Infected person added with ID: ${result.insertId}`);
    });
});

app.post('/countries',[
    body('name')
    .not().isEmpty()
    .withMessage('Country name cannot be empty'),
    body('infected')
    .not().isEmpty()
    .isDecimal()
    .withMessage('infected only accepts numbers')
], (req, res) => {
    const errors = validationResult(req);
    if (!errors.isEmpty()) {
    return res.status(422).json({ errors: errors.array() })
    };
    pool.query('INSERT INTO `infected countries` SET ?', req.body, (error, result) => {
        if (error) throw error;

        res.status(201).send(`Country added with ID: ${result.insertId}`);
    });
});

app.use(function(req, res, next) {
    respuesta = {
    error: true, 
    codigo: 404, 
    mensaje: 'URL not found'
    };
    res.status(404).send(`${respuesta.mensaje}. Code ${respuesta.codigo}`);
});

app.listen(3000, () => {
    console.log("Server started in localhost:3000");
});

