# getaccount "KMD_address"

DEPRECATED. Returns the account associated with the given address.


Arguments:
```
1. "KMD_address"  (string, required) The KMD address for account lookup.

```
Result:
```
"accountname"        (string) the account address


```
Examples:
```
> komodo-cli getaccount "RD6GgnrMpPaTSMn8vai6yiGA7mN4QGPV"
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getaccount", "params": ["RD6GgnrMpPaTSMn8vai6yiGA7mN4QGPV"] }' -H 'content-type: text/plain;' http://127.0.0.1:7771/
```
