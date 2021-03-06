# signmessage "KMD address" "message"

Sign a message with the private key of an address


Arguments:
```
1. "KMD address"  (string, required) The KMD address to use for the private key.
2. "message"         (string, required) The message to create a signature of.

```
Result:
```
"signature"          (string) The signature of the message encoded in base 64


```
Examples:
```

Unlock the wallet for 30 seconds
> komodo-cli walletpassphrase "mypassphrase" 30

Create the signature
> komodo-cli signmessage "RD6GgnrMpPaTSMn8vai6yiGA7mN4QGPV" "my message"

Verify the signature
> komodo-cli verifymessage "RD6GgnrMpPaTSMn8vai6yiGA7mN4QGPV" "signature" "my message"

As json rpc
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "signmessage", "params": ["RD6GgnrMpPaTSMn8vai6yiGA7mN4QGPV", "my message"] }' -H 'content-type: text/plain;' http://127.0.0.1:7771/
```
