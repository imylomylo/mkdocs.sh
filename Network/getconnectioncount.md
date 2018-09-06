# getconnectioncount

Returns the number of connections to other nodes.

b```
Result:
```
n          (numeric) The connection count


```
Examples:
```
> komodo-cli getconnectioncount 
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getconnectioncount", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:7771/
```
