# estimatefee nblocks

Estimates the approximate fee per kilobyte
needed for a transaction to begin confirmation
within nblocks blocks.


Arguments:
```
1. nblocks     (numeric)

```
Result:
```
n :    (numeric) estimated fee-per-kilobyte

-1.0 is returned if not enough transactions and
blocks have been observed to make an estimate.

Example:
> komodo-cli estimatefee 6
```
