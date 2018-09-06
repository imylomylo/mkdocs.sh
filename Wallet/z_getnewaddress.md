# z_getnewaddress

Returns a new zaddr for receiving payments.


Arguments:
```

```
Result:
```
"KMD_address"    (string) The new zaddr


```
Examples:
```
> komodo-cli z_getnewaddress 
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "z_getnewaddress", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:7771/
```
