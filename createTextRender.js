exports.createTextRenderFunction = function(aType, data) {
    let textRender = createTextRenderer(aType, data);
    return textRender;
}

class TextRenderer {
    constructor(data) {
        this.data = data;
    }

    renderText() {
        throw new Error('Este metodo no se resuelve aqui');
    }
}

class PlainTextRenderer extends TextRenderer {

    renderText(aCurrencyFormatter) {
        let result = `Statement for ${this.data.customer}\n`;

        for (let perf of this.data.performances) {

        result += `  ${perf.play.name}: ${aCurrencyFormatter.getCurrency()} ${aCurrencyFormatter.formatCurrency(perf.amount / 100)} (${perf.audience} seats)\n`;
        }
        result += `Amount owed is ${aCurrencyFormatter.getCurrency()} ${aCurrencyFormatter.formatCurrency(this.data.totalAmount / 100)}\n`;
        result += `You earned ${this.data.totalVolumeCredits} credits\n`;
        return result;
    }
}

class HTMLRenderer extends TextRenderer {

    renderText(aCurrencyFormatter) {
        let result = `<h1>Statement for ${this.data.customer}</h1>\n`;
        result += "<table>\n";
        result += "<tr><th>play</th><th>seats</th><th>cost</th></tr>\n";
        for (let perf of this.data.performances) {
            result += `<tr><td>${perf.play.name}</td><td>${perf.audience}</td>`;
            result += `<td>${aCurrencyFormatter.getCurrency()} ${aCurrencyFormatter.formatCurrency(perf.amount/100)}</td></tr>\n`;
        }
        result += "</table>\n";
        result += `<p>Amount owed is <em>${aCurrencyFormatter.getCurrency()} ${aCurrencyFormatter.formatCurrency(this.data.totalAmount/100)}</em></p>\n`;
        result += `<p>You earned <em>${this.data.totalVolumeCredits}</em> credits</p>\n`;
        return result;
    }
}

function createTextRenderer(aTextType, data) {
    switch (aTextType) {
        case "PlainText": return new PlainTextRenderer(data);
        case "HTML": return new HTMLRenderer(data);          
        default: throw new Error(`unknown type: ${aTextType}`);
    }
}