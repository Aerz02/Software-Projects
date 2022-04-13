// Import the modules we need
var express = require('express');
const session = require('express-session');
const fileUpload = require('express-fileupload');
var ejs = require('ejs');
var mysql = require('mysql');
var bodyParser = require('body-parser');

// Create the express application object
const app = express();
const port = 8000;

// Define the database connection
const db = mysql.createConnection ({
    host: 'localhost',
    user: 'root',
    password: 'Samsung001234!!',
    database: 'ChooseMini'
});

// Connect to the database
db.connect((err) => {
    if (err) {
        throw err;
    }
    console.log('Connected to database');
});

global.db = db;

app.use(session({
	secret: 'secret',
	resave: true,
	saveUninitialized: true
}));
// Allows us to get text from the page 
app.use(bodyParser.urlencoded({ extended: true }));
app.use(fileUpload());

// Set the directory where static files (css, js, etc) will be
app.use(express.static(__dirname + "/public"));

app.use('/images', express.static("images"));

// Set the directory where Express will pick up HTML files
// __dirname will get the current directory
app.set('views', __dirname + '/views');

// Tell Express that we want to use EJS as the templating engine
app.set('view engine', 'ejs');

// Tells Express how we should process html files
// We want to use EJS's rendering engine
app.engine('html', ejs.renderFile);

// Define our data
var shopData = {shopName: "ChooseMini"};


// Requires the main.js file inside the routes folder passing in the Express app and data as arguments.  All the routes will go in this file
require("./routes/main")(app, shopData);

// Start the web app listening
app.listen(port, () => console.log(`Website listening on port ${port}!`))