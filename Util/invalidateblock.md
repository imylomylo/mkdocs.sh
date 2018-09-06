# invalidateblock "hash"

Permanently marks a block as invalid, as if it violated a consensus rule.


Arguments:
```
1. hash   (string, required) the hash of the block to mark as invalid

```
Result:
```


```
Examples:
```
> komodo-cli invalidateblock "blockhash"
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "invalidateblock", "params": ["blockhash"] }' -H 'content-type: text/plain;' http://127.0.0.1:7771/
```
