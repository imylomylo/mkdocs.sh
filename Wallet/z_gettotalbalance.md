# z_gettotalbalance ( minconf includeWatchonly )

Return the total value of funds stored in the node’s wallet.

CAUTION: If the wallet contains watch-only zaddrs, the returned private balance may be larger than the actual balance,
because spends cannot be detected with incoming viewing keys.


Arguments:
```
1. minconf          (numeric, optional, default=1) Only include private and transparent transactions confirmed at least this many times.
2. includeWatchonly (bool, optional, default=false) Also include balance in watchonly addresses (see 'importaddress' and 'z_importviewingkey')

```
Result:
```
{
  "transparent": xxxxx,     (numeric) the total balance of transparent funds
  "private": xxxxx,         (numeric) the total balance of private funds
  "total": xxxxx,           (numeric) the total balance of both transparent and private funds
}


```
Examples:
```

The total amount in the wallet
> komodo-cli z_gettotalbalance 

The total amount in the wallet at least 5 blocks confirmed
> komodo-cli z_gettotalbalance 5

As a json rpc call
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "z_gettotalbalance", "params": [5] }' -H 'content-type: text/plain;' http://127.0.0.1:7771/
```
