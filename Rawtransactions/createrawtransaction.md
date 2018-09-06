# createrawtransaction [{"txid":"id","vout":n},...] {"address":amount,...}

Create a transaction spending the given inputs and sending to the given addresses.
Returns hex-encoded raw transaction.
Note that the transaction's inputs are not signed, and
it is not stored in the wallet or transmitted to the network.


Arguments:
```
1. "transactions"        (string, required) A json array of json objects
     [
       {
         "txid":"id",  (string, required) The transaction id
         "vout":n        (numeric, required) The output number
       }
       ,...
     ]
2. "addresses"           (string, required) a json object with addresses as keys and amounts as values
    {
      "address": x.xxx   (numeric, required) The key is the Komodo address, the value is the KMD amount
      ,...
    }

```
Result:
```
"transaction"            (string) hex string of the transaction

Examples
> komodo-cli createrawtransaction "[{\"txid\":\"myid\",\"vout\":0}]" "{\"address\":0.01}"
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "createrawtransaction", "params": ["[{\"txid\":\"myid\",\"vout\":0}]", "{\"address\":0.01}"] }' -H 'content-type: text/plain;' http://127.0.0.1:7771/
```
