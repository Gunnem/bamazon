var mysql = require("mysql");
var inquirer = require("inquirer");
var cTable = require('console.table');

var connection = mysql.createConnection({
  host: "localhost",
  port: 3306,
  user: "root",
  password: "Thibaudcat9",
  database: "bamazon_DB"
});
connection.connect(function(err) {
    if (err) throw err;
    console.log("connected as id " + connection.threadId);
    afterConnection();
  });
  
  function afterConnection() {
    connection.query("SELECT * FROM products", function(err, res) {
      if (err) throw err;
      console.table(res);
    //   connection.end();
    });
  }
  // validateInput makes sure that the user is supplying only positive integers for their inputs
function validateInput(value) {
	var integer = Number.isInteger(parseFloat(value));
	var sign = Math.sign(value);

	if (integer && (sign === 1)) {
		return true;
	} else {
		return 'Please enter a whole non-zero number.';
	}
}

  inquirer.prompt([
    {
      type: "input",
      name: "id",
      message: "What is the ID of the product you would like to purchase?",
      validate: validateInput,
	  filter: Number
    },
    {
      type: "input",
      name: "qty",
      message: "How much would you like to purchase?",
      validate: validateInput,
	  filter: Number
      }
    
    ]).then(function(ans){
      var userPick = (ans.id);
      var userQty = parseInt(ans.qty);
      var grandTotal = parseFloat(((res[userPick].Price)*userQty).toFixed(2));

      //check if quantity is sufficient
      if(res[userPick].stock_quantity >= userQty){
        //after purchase, updates quantity in Products
        connection.query("UPDATE products SET ? WHERE ?", [
        {stock_quantity: (res[userPick].stock_quantity - userQty)},
        {item_id: ans.id}
        ], function(err, result){
            if(err) throw err;
            console.log("Success! Your total is $" + grandTotal.toFixed(2) + ". Your item(s) will be shipped to you in 3-5 business days.");
        });

      } else{
        console.log("Sorry, there's not enough in stock!");
      }

      reprompt();
    })


//asks if they would like to purchase another item
function reprompt(){
  inquirer.prompt([{
    type: "confirm",
    name: "reply",
    message: "Would you like to purchase another item?"
  }]).then(function(ans){
    if(ans.reply){
        afterConnection();
    } else{
      console.log("See you soon!");
    }
  });
}

// afterConnection();