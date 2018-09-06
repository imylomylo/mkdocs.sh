# listunspent ( minconf maxconf  ["address",...] )

Returns array of unspent transaction outputs
with between minconf and maxconf (inclusive) confirmations.
Optionally filter to only include txouts paid to specified addresses.
Results are an array of Objects, each of which has:
{txid, vout, scriptPubKey, amount, confirmations}


Arguments:
```
1. minconf          (numeric, optional, default=1) The minimum confirmations to filter
2. maxconf          (numeric, optional, default=9999999) The maximum confirmations to filter
3. "addresses"    (string) A json array of KMD addresses to filter
    [
      "address"   (string) KMD address
      ,...
    ]

Result
[                   (array of json object)
  {
    "txid" : "txid",        (string) the transaction id 
    "vout" : n,               (numeric) the vout value
    "generated" : true|false  (boolean) true if txout is a coinbase transaction output
    "address" : "address",  (string) the KMD address
    "account" : "account",  (string) DEPRECATED. The associated account, or "" for the default account
    "scriptPubKey" : "key", (string) the script key
    "amount" : x.xxx,         (numeric) the transaction amount in KMD
    "confirmations" : n       (numeric) The number of confirmations
  }
  ,...
]

Examples
> komodo-cli listunspent 
> komodo-cli listunspent 6 9999999 "[\"RD6GgnrMpPaTSMn8vai6yiGA7mN4QGPV\",\"RD6GgnrMpPaTSMn8vai6yiGA7mN4QGPV\"]"
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "listunspent", "params": [6, 9999999 "[\"RD6GgnrMpPaTSMn8vai6yiGA7mN4QGPV\",\"RD6GgnrMpPaTSMn8vai6yiGA7mN4QGPV\"]"] }' -H 'content-type: text/plain;' http://127.0.0.1:7771/
```
