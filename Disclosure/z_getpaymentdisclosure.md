# z_getpaymentdisclosure "txid" "js_index" "output_index" ("message") 

Generate a payment disclosure for a given joinsplit output.

EXPERIMENTAL FEATURE

WARNING: Payment disclosure is currently DISABLED. This call always fails.


Arguments:
```
1. "txid"            (string, required) 
2. "js_index"        (string, required) 
3. "output_index"    (string, required) 
4. "message"         (string, optional) 

```
Result:
```
"paymentdisclosure"  (string) Hex data string, with "zpd:" prefix.


```
Examples:
```
> komodo-cli z_getpaymentdisclosure 96f12882450429324d5f3b48630e3168220e49ab7b0f066e5c2935a6b88bb0f2 0 0 "refund"
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "z_getpaymentdisclosure", "params": ["96f12882450429324d5f3b48630e3168220e49ab7b0f066e5c2935a6b88bb0f2", 0, 0, "refund"] }' -H 'content-type: text/plain;' http://127.0.0.1:7771/
```
