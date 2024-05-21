exports.createCurrencyFormatterFunction = function(aCurrency) {
    let formatter = createCurrencyFormatter(aCurrency);
    return formatter;
}

class CurrencyFormatter {
    constructor(aCurrency) {
        this.currency = aCurrency;
    }

    formatCurrency() {
        throw new Error('Este metodo no se resuelve aqui');
    }

    getCurrency() {
        return this.currency;
    }
}

class USD_Formatter extends CurrencyFormatter {

    formatCurrency(aNumber) {
        return new Intl.NumberFormat("en-US",
            {
            style: "currency", currency: this.currency,
            minimumFractionDigits: 2
            }).format(aNumber);
    }
}

class ARS_Formatter extends CurrencyFormatter {

    formatCurrency(aNumber) {
        return new Intl.NumberFormat("es-AR",
            {
                style: "currency", currency: this.currency,
                minimumFractionDigits: 2
            }).format(aNumber);
    }
}

class JPY_Formatter extends CurrencyFormatter {

    formatCurrency(aNumber) {
        return new Intl.NumberFormat("ja-JP",
            {
                style: "currency", currency: this.currency
            }).format(aNumber);
    }
}

class CNY_Formatter extends CurrencyFormatter {

    formatCurrency(aNumber) {
        return new Intl.NumberFormat("zh-CN",
            {
                style: "currency", currency: this.currency,
                minimumFractionDigits: 2
            }).format(aNumber);
    }
}

function createCurrencyFormatter(aCurrency) {
    switch (aCurrency) {
        case "USD": return new USD_Formatter(aCurrency);
        case "ARS": return new ARS_Formatter(aCurrency);
        case "JPY": return new JPY_Formatter(aCurrency);
        case "CNY": return new CNY_Formatter(aCurrency);
        default: throw new Error(`unknown type: ${aCurrency}`);
    }
}