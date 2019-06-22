//require packages
var inquirer = require("inquirer")
var mysql = require("mysql");

var connection = mysql.createConnection({
  host: "localhost",

  // Your port; if not 3306
  port: 3306,

  // Your username
  user: "root",

  // Your password
  password: "choco420",
  database: "bamazon_DB"
});

connection.connect(function (err) {
  if (err) throw err;
  console.log("connected as id " + connection.threadId);
  showProducts();
});


function showProducts() {
  connection.query("SELECT * FROM products", function (err, res) {
    if (err) throw err;
    for (var i = 0; i < res.length; i++) {
      console.log("id: " + res[i].item_id + " | " + res[i].product_name + " | " + "$" + res[i].price);
    }
    console.log("-----------------------------------");
    customerOrder();
  });
};


function customerOrder() {
  inquirer.prompt([
    {
      name: "item",
      type: "input",
      message: "Enter the ID of the item you would like to purchase"
    },
    {
      name: "quantity",
      type: "input",
      message: "How many would you like to buy?"
    }

  ]).then(function (answer) {
    connection.query("SELECT item_id,product_name,price,stock_quantity FROM products WHERE ?",
      { item_id: answer.item }, function (err, res) {

        if (parseInt(answer.quantity) > res[0].stock_quantity) {
          console.log("insufficient quantity! Would you like to order something else?");
          showProducts();
        } 
        else {
          console.log("total cost $ " + parseInt(res[0].price) * parseInt(answer.quantity));
          var remainingStock = res[0].stock_quantity - answer.quantity;
          connection.query(
            "UPDATE products SET ? WHERE ?",
            [
              {
                stock_quantity: remainingStock,
              },
              {
                item_id: answer.item,
              }
            ],
            function (err) {
              if (err) throw err;
            });
          console.log(remainingStock + " " + res[0].product_name + " left");
          connection.end();
        }
      })
  });
};






