# dumpprivkey "komodoaddress"

Reveals the private key corresponding to 'komodoaddress'.
Then the importprivkey can be used with this output


Arguments:
```
1. "komodoaddress"   (string, required) The komodo address for the private key

```
Result:
```
"key"                (string) The private key


```
Examples:
```
> komodo-cli dumpprivkey "myaddress"
> komodo-cli importprivkey "mykey"
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "dumpprivkey", "params": ["myaddress"] }' -H 'content-type: text/plain;' http://127.0.0.1:7771/
```
