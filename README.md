# mkdocs.sh
Running this shell script at least saves you from a lot of c+p.

If you just took 1.sh and ran it anywhere komodo-cli is available, it will create the rest of the directories and help files.

# Prerequisites
`komodo-cli` in your PATH.
e.g.
```
sudo ln -sf /location/of/komodo/src/komodo-cli /usr/local/bin/
```

# Create markdown docs
 - Copy `1.sh` anywhere you want on your (only tested on) ubuntu-16.04 system.
 - `1.sh` will create directories and output markdown for every cli command.
