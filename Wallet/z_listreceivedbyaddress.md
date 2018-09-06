# z_listreceivedbyaddress "address" ( minconf )

Return a list of amounts received by a zaddr belonging to the node’s wallet.


Arguments:
```
1. "address"      (string) The private address.
2. minconf          (numeric, optional, default=1) Only include transactions confirmed at least this many times.

```
Result:
```
{
  "txid": xxxxx,     (string) the transaction id
  "amount": xxxxx,   (numeric) the amount of value in the note
  "memo": xxxxx,     (string) hexademical string representation of memo field
}


```
Examples:
```
> komodo-cli z_listreceivedbyaddress "ztfaW34Gj9FrnGUEf833ywDVL62NWXBM81u6EQnM6VR45eYnXhwztecW1SjxA7JrmAXKJhxhj3vDNEpVCQoSvVoSpmbhtjf"
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "z_listreceivedbyaddress", "params": ["ztfaW34Gj9FrnGUEf833ywDVL62NWXBM81u6EQnM6VR45eYnXhwztecW1SjxA7JrmAXKJhxhj3vDNEpVCQoSvVoSpmbhtjf"] }' -H 'content-type: text/plain;' http://127.0.0.1:7771/
```
