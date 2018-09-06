# getreceivedbyaddress "KMD_address" ( minconf )

Returns the total amount received by the given KMD address in transactions with at least minconf confirmations.


Arguments:
```
1. "KMD_address"  (string, required) The KMD address for transactions.
2. minconf             (numeric, optional, default=1) Only include transactions confirmed at least this many times.

```
Result:
```
amount   (numeric) The total amount in KMD received at this address.


```
Examples:
```

The amount from transactions with at least 1 confirmation
> komodo-cli getreceivedbyaddress "RD6GgnrMpPaTSMn8vai6yiGA7mN4QGPV"

The amount including unconfirmed transactions, zero confirmations
> komodo-cli getreceivedbyaddress "RD6GgnrMpPaTSMn8vai6yiGA7mN4QGPV" 0

The amount with at least 6 confirmations, very safe
> komodo-cli getreceivedbyaddress "RD6GgnrMpPaTSMn8vai6yiGA7mN4QGPV" 6

As a json rpc call
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getreceivedbyaddress", "params": ["RD6GgnrMpPaTSMn8vai6yiGA7mN4QGPV", 6] }' -H 'content-type: text/plain;' http://127.0.0.1:7771/
```
