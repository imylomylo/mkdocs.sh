# verifymessage "komodoaddress" "signature" "message"

Verify a signed message


Arguments:
```
1. "komodoaddress"    (string, required) The Komodo address to use for the signature.
2. "signature"       (string, required) The signature provided by the signer in base 64 encoding (see signmessage).
3. "message"         (string, required) The message that was signed.

```
Result:
```
true|false   (boolean) If the signature is verified or not.


```
Examples:
```

Unlock the wallet for 30 seconds
> komodo-cli walletpassphrase "mypassphrase" 30

Create the signature
> komodo-cli signmessage "RNKiEBduBru6Siv1cZRVhp4fkZNyPska6z" "my message"

Verify the signature
> komodo-cli verifymessage "RNKiEBduBru6Siv1cZRVhp4fkZNyPska6z" "signature" "my message"

As json rpc
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "verifymessage", "params": ["RNKiEBduBru6Siv1cZRVhp4fkZNyPska6z", "signature", "my message"] }' -H 'content-type: text/plain;' http://127.0.0.1:7771/
```
