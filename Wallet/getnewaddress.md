# getnewaddress ( "account" )

Returns a new KMD address for receiving payments.


Arguments:
```
1. "account"        (string, optional) DEPRECATED. If provided, it MUST be set to the empty string "" to represent the default account. Passing any other string will result in an error.

```
Result:
```
"KMD_address"    (string) The new KMD address


```
Examples:
```
> komodo-cli getnewaddress 
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getnewaddress", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:7771/
```
