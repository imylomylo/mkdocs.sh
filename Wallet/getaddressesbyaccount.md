# getaddressesbyaccount "account"

DEPRECATED. Returns the list of addresses for the given account.


Arguments:
```
1. "account"  (string, required) MUST be set to the empty string "" to represent the default account. Passing any other string will result in an error.

```
Result:
```
[                     (json array of string)
  "KMD_address"  (string) a KMD address associated with the given account
  ,...
]


```
Examples:
```
> komodo-cli getaddressesbyaccount "tabby"
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getaddressesbyaccount", "params": ["tabby"] }' -H 'content-type: text/plain;' http://127.0.0.1:7771/
```
