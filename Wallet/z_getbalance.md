# z_getbalance "address" ( minconf )

Returns the balance of a taddr or zaddr belonging to the node’s wallet.

CAUTION: If address is a watch-only zaddr, the returned balance may be larger than the actual balance,
because spends cannot be detected with incoming viewing keys.


Arguments:
```
1. "address"      (string) The selected address. It may be a transparent or private address.
2. minconf          (numeric, optional, default=1) Only include transactions confirmed at least this many times.

```
Result:
```
amount              (numeric) The total amount in KMD received for this address.


```
Examples:
```

The total amount received by address "myaddress"
> komodo-cli z_getbalance "myaddress"

The total amount received by address "myaddress" at least 5 blocks confirmed
> komodo-cli z_getbalance "myaddress" 5

As a json rpc call
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "z_getbalance", "params": ["myaddress", 5] }' -H 'content-type: text/plain;' http://127.0.0.1:7771/
```
