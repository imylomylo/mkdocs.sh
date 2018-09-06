# z_validateaddress "zaddr"

Return information about the given z address.


Arguments:
```
1. "zaddr"     (string, required) The z address to validate

```
Result:
```
{
  "isvalid" : true|false,      (boolean) If the address is valid or not. If not, this is the only property returned.
  "address" : "zaddr",         (string) The z address validated
  "ismine" : true|false,       (boolean) If the address is yours or not
  "payingkey" : "hex",         (string) The hex value of the paying key, a_pk
  "transmissionkey" : "hex",   (string) The hex value of the transmission key, pk_enc
}


```
Examples:
```
> komodo-cli z_validateaddress "zcWsmqT4X2V4jgxbgiCzyrAfRT1vi1F4sn7M5Pkh66izzw8Uk7LBGAH3DtcSMJeUb2pi3W4SQF8LMKkU2cUuVP68yAGcomL"
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "z_validateaddress", "params": ["zcWsmqT4X2V4jgxbgiCzyrAfRT1vi1F4sn7M5Pkh66izzw8Uk7LBGAH3DtcSMJeUb2pi3W4SQF8LMKkU2cUuVP68yAGcomL"] }' -H 'content-type: text/plain;' http://127.0.0.1:7771/
```
