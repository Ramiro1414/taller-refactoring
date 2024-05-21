# language: es

Característica: Imprimir la factura de una compañía teatral
   Necesaria para liquidar el borderau

Escenario: imprimr la factura de BigCo en texto plano y usd
   Dado el listado de la facturación de espectáculos
      """
      {
      "customer": "BigCo",
      "performances": [
         {
            "playID": "hamlet",
            "audience": 55
         },
         {
            "playID": "as-like",
            "audience": 35
         },
         {
            "playID": "othello",
            "audience": 40
         }
      ]
      }
      """
   Y la lista de obras
      """
      {
         "hamlet": {
            "name": "Hamlet",
            "type": "tragedy"
         },
         "as-like": {
            "name": "As You Like It",
            "type": "comedy"
         },
         "othello": {
            "name": "Othello",
            "type": "tragedy"
         }
      }
      """
   Cuando mando a imprimir el borderau en "PlainText" y "USD"
   Entonces debería imprimir el borderau en "PlainText" y "USD"
      """
      Statement for BigCo
        Hamlet: USD $650.00 (55 seats)
        As You Like It: USD $580.00 (35 seats)
        Othello: USD $500.00 (40 seats)
      Amount owed is USD $1,730.00
      You earned 47 credits
      """

Escenario: imprimr la factura de BigCo en HTML y usd
   Dado el listado de la facturación de espectáculos
      """
      {
      "customer": "BigCo",
      "performances": [
         {
            "playID": "hamlet",
            "audience": 55
         },
         {
            "playID": "as-like",
            "audience": 35
         },
         {
            "playID": "othello",
            "audience": 40
         }
      ]
      }
      """
   Y la lista de obras
      """
      {
         "hamlet": {
            "name": "Hamlet",
            "type": "tragedy"
         },
         "as-like": {
            "name": "As You Like It",
            "type": "comedy"
         },
         "othello": {
            "name": "Othello",
            "type": "tragedy"
         }
      }
      """
   Cuando mando a imprimir el borderau en "HTML" y "USD"
   Entonces debería imprimir el borderau en "HTML" y "USD"
      """
      <h1>Statement for BigCo</h1>
      <table>
      <tr><th>play</th><th>seats</th><th>cost</th></tr>
      <tr><td>Hamlet</td><td>55</td><td>USD $650.00</td></tr>
      <tr><td>As You Like It</td><td>35</td><td>USD $580.00</td></tr>
      <tr><td>Othello</td><td>40</td><td>USD $500.00</td></tr>
      </table>
      <p>Amount owed is <em>USD $1,730.00</em></p>
      <p>You earned <em>47</em> credits</p>
      """
      
Escenario: imprimr la factura de BigCo en texto plano y ars
   Dado el listado de la facturación de espectáculos
      """
      {
      "customer": "BigCo",
      "performances": [
         {
            "playID": "hamlet",
            "audience": 55
         },
         {
            "playID": "as-like",
            "audience": 35
         },
         {
            "playID": "othello",
            "audience": 40
         }
      ]
      }
      """
   Y la lista de obras
      """
      {
         "hamlet": {
            "name": "Hamlet",
            "type": "tragedy"
         },
         "as-like": {
            "name": "As You Like It",
            "type": "comedy"
         },
         "othello": {
            "name": "Othello",
            "type": "tragedy"
         }
      }
      """
   Cuando mando a imprimir el borderau en "PlainText" y "ARS"
   Entonces debería imprimir el borderau en "PlainText" y "ARS"
      """
      Statement for BigCo
        Hamlet: ARS $ 650,00 (55 seats)
        As You Like It: ARS $ 580,00 (35 seats)
        Othello: ARS $ 500,00 (40 seats)
      Amount owed is ARS $ 1.730,00
      You earned 47 credits
      """

Escenario: imprimr la factura de BigCo en HTML y ars
   Dado el listado de la facturación de espectáculos
      """
      {
      "customer": "BigCo",
      "performances": [
         {
            "playID": "hamlet",
            "audience": 55
         },
         {
            "playID": "as-like",
            "audience": 35
         },
         {
            "playID": "othello",
            "audience": 40
         }
      ]
      }
      """
   Y la lista de obras
      """
      {
         "hamlet": {
            "name": "Hamlet",
            "type": "tragedy"
         },
         "as-like": {
            "name": "As You Like It",
            "type": "comedy"
         },
         "othello": {
            "name": "Othello",
            "type": "tragedy"
         }
      }
      """
   Cuando mando a imprimir el borderau en "HTML" y "ARS"
   Entonces debería imprimir el borderau en "HTML" y "ARS"
      """
      <h1>Statement for BigCo</h1>
      <table>
      <tr><th>play</th><th>seats</th><th>cost</th></tr>
      <tr><td>Hamlet</td><td>55</td><td>ARS $ 650,00</td></tr>
      <tr><td>As You Like It</td><td>35</td><td>ARS $ 580,00</td></tr>
      <tr><td>Othello</td><td>40</td><td>ARS $ 500,00</td></tr>
      </table>
      <p>Amount owed is <em>ARS $ 1.730,00</em></p>
      <p>You earned <em>47</em> credits</p>
      """

Escenario: imprimr la factura de BigCo en texto plano y jpy
   Dado el listado de la facturación de espectáculos
      """
      {
      "customer": "BigCo",
      "performances": [
         {
            "playID": "hamlet",
            "audience": 55
         },
         {
            "playID": "as-like",
            "audience": 35
         },
         {
            "playID": "othello",
            "audience": 40
         }
      ]
      }
      """
   Y la lista de obras
      """
      {
         "hamlet": {
            "name": "Hamlet",
            "type": "tragedy"
         },
         "as-like": {
            "name": "As You Like It",
            "type": "comedy"
         },
         "othello": {
            "name": "Othello",
            "type": "tragedy"
         }
      }
      """
   Cuando mando a imprimir el borderau en "PlainText" y "JPY"
   Entonces debería imprimir el borderau en "PlainText" y "JPY"
      """
      Statement for BigCo
        Hamlet: JPY ￥650 (55 seats)
        As You Like It: JPY ￥580 (35 seats)
        Othello: JPY ￥500 (40 seats)
      Amount owed is JPY ￥1,730
      You earned 47 credits
      """

Escenario: imprimr la factura de BigCo en HTML y jpy
   Dado el listado de la facturación de espectáculos
      """
      {
      "customer": "BigCo",
      "performances": [
         {
            "playID": "hamlet",
            "audience": 55
         },
         {
            "playID": "as-like",
            "audience": 35
         },
         {
            "playID": "othello",
            "audience": 40
         }
      ]
      }
      """
   Y la lista de obras
      """
      {
         "hamlet": {
            "name": "Hamlet",
            "type": "tragedy"
         },
         "as-like": {
            "name": "As You Like It",
            "type": "comedy"
         },
         "othello": {
            "name": "Othello",
            "type": "tragedy"
         }
      }
      """
   Cuando mando a imprimir el borderau en "HTML" y "JPY"
   Entonces debería imprimir el borderau en "HTML" y "JPY"
      """
      <h1>Statement for BigCo</h1>
      <table>
      <tr><th>play</th><th>seats</th><th>cost</th></tr>
      <tr><td>Hamlet</td><td>55</td><td>JPY ￥650</td></tr>
      <tr><td>As You Like It</td><td>35</td><td>JPY ￥580</td></tr>
      <tr><td>Othello</td><td>40</td><td>JPY ￥500</td></tr>
      </table>
      <p>Amount owed is <em>JPY ￥1,730</em></p>
      <p>You earned <em>47</em> credits</p>
      """

Escenario: imprimr la factura de BigCo en texto plano y cny
   Dado el listado de la facturación de espectáculos
      """
      {
      "customer": "BigCo",
      "performances": [
         {
            "playID": "hamlet",
            "audience": 55
         },
         {
            "playID": "as-like",
            "audience": 35
         },
         {
            "playID": "othello",
            "audience": 40
         }
      ]
      }
      """
   Y la lista de obras
      """
      {
         "hamlet": {
            "name": "Hamlet",
            "type": "tragedy"
         },
         "as-like": {
            "name": "As You Like It",
            "type": "comedy"
         },
         "othello": {
            "name": "Othello",
            "type": "tragedy"
         }
      }
      """
   Cuando mando a imprimir el borderau en "PlainText" y "CNY"
   Entonces debería imprimir el borderau en "PlainText" y "CNY"
      """
      Statement for BigCo
        Hamlet: CNY ¥650.00 (55 seats)
        As You Like It: CNY ¥580.00 (35 seats)
        Othello: CNY ¥500.00 (40 seats)
      Amount owed is CNY ¥1,730.00
      You earned 47 credits
      """

Escenario: imprimr la factura de BigCo en HTML y cny
   Dado el listado de la facturación de espectáculos
      """
      {
      "customer": "BigCo",
      "performances": [
         {
            "playID": "hamlet",
            "audience": 55
         },
         {
            "playID": "as-like",
            "audience": 35
         },
         {
            "playID": "othello",
            "audience": 40
         }
      ]
      }
      """
   Y la lista de obras
      """
      {
         "hamlet": {
            "name": "Hamlet",
            "type": "tragedy"
         },
         "as-like": {
            "name": "As You Like It",
            "type": "comedy"
         },
         "othello": {
            "name": "Othello",
            "type": "tragedy"
         }
      }
      """
   Cuando mando a imprimir el borderau en "HTML" y "CNY"
   Entonces debería imprimir el borderau en "HTML" y "CNY"
      """
      <h1>Statement for BigCo</h1>
      <table>
      <tr><th>play</th><th>seats</th><th>cost</th></tr>
      <tr><td>Hamlet</td><td>55</td><td>CNY ¥650.00</td></tr>
      <tr><td>As You Like It</td><td>35</td><td>CNY ¥580.00</td></tr>
      <tr><td>Othello</td><td>40</td><td>CNY ¥500.00</td></tr>
      </table>
      <p>Amount owed is <em>CNY ¥1,730.00</em></p>
      <p>You earned <em>47</em> credits</p>
      """