var fs = require('fs');
var dataPlays = fs.readFileSync('plays.json', 'utf8');
var plays = JSON.parse(dataPlays);
var dataInvoices = fs.readFileSync('invoices.json', 'utf8');
var invoices = JSON.parse(dataInvoices);
var print_the_bill = require('./statement.js');

for (let invoice of invoices) {
   console.log(print_the_bill.printTheBill(invoice,plays, "PlainText", "USD"));
   console.log(print_the_bill.printTheBill(invoice,plays, "HTML", "USD"));
   console.log(print_the_bill.printTheBill(invoice,plays, "PlainText", "ARS"));
   console.log(print_the_bill.printTheBill(invoice,plays, "HTML", "ARS"));
   console.log(print_the_bill.printTheBill(invoice,plays, "PlainText", "JPY"));
   console.log(print_the_bill.printTheBill(invoice,plays, "HTML", "JPY"));
   console.log(print_the_bill.printTheBill(invoice,plays, "PlainText", "CNY"));
   console.log(print_the_bill.printTheBill(invoice,plays, "HTML", "CNY"));
}