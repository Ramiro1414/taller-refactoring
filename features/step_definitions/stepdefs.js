const assert = require('assert');
const { Given, When, Then } = require('@cucumber/cucumber');
var print_the_bill = require('../../statement');

Given('el listado de la facturación de espectáculos', function (espectaculos) {
   this.invoice = JSON.parse(espectaculos);
});

Given('la lista de obras', function (obras) {
   this.play = JSON.parse(obras);
});

When('mando a imprimir el borderau en {string} y {string}', function (textType, currency) {
   this.actualAnswer = print_the_bill.printTheBill(this.invoice,this.play, textType, currency);
});

Then('debería imprimir el borderau en {string} y {string}', function (textType, currency, expectedAnswer) {
   // Reemplazar espacios no divisibles por espacios regulares en ambos strings
   const cleanActual = this.actualAnswer.replace(/\u00A0/g, ' ').trim();
   const cleanExpected = expectedAnswer.replace(/\u00A0/g, ' ').trim();
   
   assert.equal(cleanActual, cleanExpected);
});