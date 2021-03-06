# fundrawtransaction "hexstring"

Add inputs to a transaction until it has enough in value to meet its out value.
This will not modify existing inputs, and will add one change output to the outputs.
Note that inputs which were signed may need to be resigned after completion since in/outputs have been added.
The inputs added will not be signed, use signrawtransaction for that.


Arguments:
```
1. "hexstring"    (string, required) The hex string of the raw transaction

```
Result:
```
{
  "hex":       "value", (string)  The resulting raw transaction (hex-encoded string)
  "fee":       n,         (numeric) The fee added to the transaction
  "changepos": n          (numeric) The position of the added change output, or -1
}
"hex"             


```
Examples:
```

Create a transaction with no inputs
> komodo-cli createrawtransaction "[]" "{\"myaddress\":0.01}"

Add sufficient unsigned inputs to meet the output value
> komodo-cli fundrawtransaction "rawtransactionhex"

Sign the transaction
> komodo-cli signrawtransaction "fundedtransactionhex"

Send the transaction
> komodo-cli sendrawtransaction "signedtransactionhex"
```
