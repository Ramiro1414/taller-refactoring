const createStatementData = require("./createStatementData");
const currency_formater = require('./createCurrencyFormatter.js');
const text_render = require('./createTextRender.js');

exports.printTheBill = function (invoice, plays, type, currency) {
    let render = text_render.createTextRenderFunction(type, createStatementData(invoice, plays)) // createTextRenderer(type, createStatementData(invoice, plays));
    let currencyFormatter = currency_formater.createCurrencyFormatterFunction(currency);
    return render.renderText(currencyFormatter);
}