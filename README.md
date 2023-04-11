# Checkout
Calculate total price of items - outputs integer

Offer on some items - if statement 

```
+------+-------+----------------+
| Item | Price | Special offers |
+------+-------+----------------+
| A    | 50    | 3A for 130     |
| B    | 30    | 2B for 45      |
| C    | 20    |                |
| D    | 15    |                |
+------+-------+----------------+
```

If input illegal return `-1`
illegal = lowercase letter, grammatical character, integer

INPUT | OUTPUT
------|-------
shop.checkout('A') | 50
shop.checkout('B') | 30
shop.checkout('C') | 20
shop.checkout('D') | 15
shop.checkout('AA') | 100
shop.checkout('ABCD') | 115
shop.checkout('AAA') | 130 # offer test
shop.checkout('AAAAAA') | 260 # multiple offers
shop.checkout('aBc') | -1
shop.checkout('-B8x')| -1
shop.checkout(18) | -1

Class: `Shop`
Method: `checkout(sku)`