# z_validatepaymentdisclosure "paymentdisclosure"

Validates a payment disclosure.

EXPERIMENTAL FEATURE

WARNING: Payment disclosure is curretly DISABLED. This call always fails.


Arguments:
```
1. "paymentdisclosure"     (string, required) Hex data string, with "zpd:" prefix.


```
Examples:
```
> komodo-cli z_validatepaymentdisclosure "zpd:706462ff004c561a0447ba2ec51184e6c204..."
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "z_validatepaymentdisclosure", "params": ["zpd:706462ff004c561a0447ba2ec51184e6c204..."] }' -H 'content-type: text/plain;' http://127.0.0.1:7771/
```
