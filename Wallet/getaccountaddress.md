# getaccountaddress "account"

DEPRECATED. Returns the current KMD address for receiving payments to this account.


Arguments:
```
1. "account"       (string, required) MUST be set to the empty string "" to represent the default account. Passing any other string will result in an error.

```
Result:
```
"KMD_address"   (string) The account KMD address


```
Examples:
```
> komodo-cli getaccountaddress 
> komodo-cli getaccountaddress ""
> komodo-cli getaccountaddress "myaccount"
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getaccountaddress", "params": ["myaccount"] }' -H 'content-type: text/plain;' http://127.0.0.1:7771/
```
