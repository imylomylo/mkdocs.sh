# z_listaddresses ( includeWatchonly )

Returns the list of zaddr belonging to the wallet.


Arguments:
```
1. includeWatchonly (bool, optional, default=false) Also include watchonly addresses (see 'z_importviewingkey')

```
Result:
```
[                     (json array of string)
  "zaddr"           (string) a zaddr belonging to the wallet
  ,...
]


```
Examples:
```
> komodo-cli z_listaddresses 
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "z_listaddresses", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:7771/
```
