# dumpwallet "filename"

Dumps taddr wallet keys in a human-readable format.  Overwriting an existing file is not permitted.


Arguments:
```
1. "filename"    (string, required) The filename, saved in folder set by komodod -exportdir option

```
Result:
```
"path"           (string) The full path of the destination file


```
Examples:
```
> komodo-cli dumpwallet "test"
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "dumpwallet", "params": ["test"] }' -H 'content-type: text/plain;' http://127.0.0.1:7771/
```
