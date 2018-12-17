var mysql = require("mysql");
var inquirer = require("inquirer");
var connection = mysql.createConnection({

  host: "localhost",

  port: 8889,

  user: "root",

  password: "root",

  database: "bamazon"
});

connection.connect(function (err) {
    if (err) throw err;
    console.log("Connectes as id: " + connection.threadId);
    Inventory();
})

function Inventory() {
    connection.query("SELECT * FROM products", function (err, res) {
        if (err) throw err;
        for (var i = 0; i < res.length; i++) {
            console.log("\n");
            console.log("Item's index: " + res[i].item_id);
            console.log("Name of item: " + res[i].product_name);
            console.log("Price of item: $" + res[i].price);
            console.log("---------------------------------\n");
        }
        buyprompt();
    });
}

function buyprompt() {
    inquirer.prompt({
        name: "buyitem",
        type: "rawlist",
        message: "Welcome to Bamazon, would you like to buy an item?",
        choices: ["Yes", "No"]
      })
      .then(function(answer) {

        if (answer.yesOrNo.toUpperCase() === "Yes") {
          buyitem();
        }
        else {
          Nothanks();
        }
      });
  }
  console.log (buyprompt);

  function buyitem() {

    inquirer.prompt([
        {
          name: "item",
          type: "input",
          message: "What is the item you would like to buy?"
        },
        {
          name: "quantity",
          type: "input",
          message: "What is the quantity you wish to purchase?",
          validate: function(quantity) {
            if (isNaN(quantity) === false) {
              return true;
            }
            return false;
          }
        }
      ])
    }
    console.log (buyitem);