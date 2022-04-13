// Route Handler for website
module.exports = (app, shopData) => {

  // Home page route
  app.get('/', (req, res) => {
    let data = Object.assign({}, shopData, {loggedin: req.session.loggedin})
    res.render('home.ejs', data);
  });
  // register page route 
  app.get('/register', (req, res) => {
    let data = Object.assign({}, shopData, {loggedin: req.session.loggedin})
    res.render('register.ejs', data);

  });

  // registered
  app.post('/registered', (req, res) => {
    // saving data in database
    let sqlquery = "INSERT INTO users (UserEmail, UserPassword, UserFirstName, UserLastName,UserPhone, UserAddress, UserAddress2, UserCity, UserState, UserZip, UserCountry) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);";
    // execute sql query
    let newUser = [req.body.email, req.body.password, req.body.first, req.body.last, req.body.phone, req.body.address,
    req.body.address2, req.body.city, req.body.state, req.body.zipcode,req.body.country];
    
    console.log(newUser);
    let name =  req.body.first + ' ' + req.body.last;

    db.query(sqlquery, newUser, (err, result) => {
      if (err) {
        return console.error(err.message);
      }
      else {
        res.send('This user is added to database, name: ' + name +' with email ' +req.body.email);
      }
    });
    // res.send("adding new user to database")
  });

  // login page route 
  app.get('/login', (req, res) => {
    let data = Object.assign({}, shopData, {loggedin: req.session.loggedin})
    res.render('login.ejs', data);    
  });

  app.post('/authenticateUser', (req, res) => {
    // Capture the input fields
    let email = req.body.email;
    let password = req.body.password;
    // Ensure the input fields exists and are not empty
    if (email && password) {
      // Execute SQL query that'll select the account from the database based on the specified email and password
      let sqlquery = "SELECT * FROM users WHERE UserEmail = ? AND UserPassword = ?;";
      db.query(sqlquery, [email, password], (err, result, fields) => {
        // If there is an issue with the query, output the error
        if (err) throw err;
        // If the account exists
        if (result.length > 0) {
          // Authenticate the user
          req.session.loggedin = true;
          req.session.email = email;
          // Redirect to home page
          res.redirect('/');
          // res.send("Welcome to " + email);
        } 
        else {
          res.send('Incorrect Email and/or Password!');
        }			
        res.end();
      });
    } else {
      res.send('Please enter Email and Password!');
      res.end();
    }
  });

  //products page route
  app.get('/products', (req, res) => {
    let data = Object.assign({}, shopData, {loggedin: req.session.loggedin})
    res.render('products.ejs', data);
  });

  // inserting products to basket
  app.get('/addingToBasket', (req, res) => {
    res.send('Adding product to basket');
  });

  app.get('/product1', (req,res) => {
      let data = Object.assign({}, shopData, {loggedin: req.session.loggedin}, 
        {ProductName:"Jacquemus Le Chiquito Leather tote bag", ProductPrice: '£385.00',
        ProductLongDesc:"Leather: Cowhide. Gold-tone logo emblem. Fold-over flap with magnetic snap.  Optional, adjustable strap. Textile lining. Weight: 7oz / 0.2kg. Made in Italy. Add something playful to your look with one of Jacquemus micro bags. This tiny crossbody is crafted in smooth and structured leather, and features an oversized top handle. Colour: black",
        ProductImage: "images/products/jacquemus Black Le Chiquito/image 1.jpeg",
        ProductImage2: "images/products/jacquemus Black Le Chiquito/image 2.jpeg",
        ProductImage3: "images/products/jacquemus Black Le Chiquito/image 3.jpeg",
        ProductImage4:"images/products/jacquemus Black Le Chiquito/image 4.jpeg",
        ProductImage5: "images/products/jacquemus Black Le Chiquito/image 5.jpeg",
        ProductImage6: "images/products/jacquemus Black Le Chiquito/image 6.jpeg"
      })
      res.render('product.ejs', data);
  });

    // let sqlquery = 'INSERT INTO basket(`ProductName`, `ProductPrice`, `ProductCartDesc`,`ProductImage`) VALUES (?, ?, ?, ?);'
    // let product = [];
    // db.query(sqlquery, product,(err, result) => {
    //   if (err) {
    //     return console.error(err.message);
    //   }
    //   else {
    //     res.send('Adding product to basket');
    //   }
    // });

  //basket page route 
  app.get('/basket', (req, res) => {
    let data = Object.assign({}, shopData, {loggedin: req.session.loggedin})
    res.render('basket.ejs', data);
  });

}
