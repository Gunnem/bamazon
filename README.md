# Bamazon

## Description

This application implements a simple command line based storefront using the npm [inquirer](https://www.npmjs.com/package/inquirer) package and the MySQL database backend together with the npm [mysql](https://www.npmjs.com/package/mysql) package. The application has an interface named **customer**.

### MySQL Database Setup

In order to run this application, you should have the MySQL database already set up on your machine. If you don't, visit the [MySQL installation page](https://dev.mysql.com/doc/refman/5.6/en/installing.html) to install the version you need for your operating system. Once you have MySQL isntalled, you will be able to create the *amazon* database and the *products* table with the SQL code found in [Bamazon.sql](Bamazon.sql). Run this code inside your MySQL client to populate the database, then you will be ready to proceed with running the Bamazon customer interface.

### Customer Interface

The customer interface allows the user to view the current inventory of store items: item IDs, descriptions, department in which the item is located and price. The user is then able to purchase one of the existing items by entering the item ID and the desired quantity. If the selected quantity is currently in stock, the user's order is fulfilled, displaying the total purchase price and updating the store database. If the desired quantity is not available, the user is prompted to modify their order.

To run the customer interface please follow the steps below:

	git clone git@github.com:Gunnem/bamazon.git
	cd bamazon
	npm install
	node bamazonCustomer.js

Node bamazonCustomer.js command in terminal: Running the app will first display available inventory.

![run image](https://github.com/Gunnem/bamazon/blob/master/images/runNode.png)

Entering item number and quantity will return the total price. It will then ask the user whether to purchase something else or quit.

![run image](https://github.com/Gunnem/bamazon/blob/master/PurchaseAnother.png)

If there is insufficient quantity, the app will notify the user that there isn't enough in stock.

![run image](https://github.com/Gunnem/bamazon/blob/master/outofstock.png)

When finished:

![run image](https://github.com/Gunnem/bamazon/blob/master/finished.png)

