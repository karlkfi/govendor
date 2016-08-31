# govendor
A docker image for [kardianos/govendor](https://github.com/kardianos/govendor).

Purpose: Avoid installing govendor or even golang locally. To facilitate containerized development.


# Usage

Vendor `govendor.sh` into your workspace:

```
curl -o govendor.sh https://raw.githubusercontent.com/karlkfi/govendor/master/govendor-remote.sh
```

Make `govendor.sh` executable:

```
chmod a+x govendor.sh
```

Initialize your vendor dir:

```
govendor.sh init
```

See [kardianos/govendor](https://github.com/kardianos/govendor) for more commands.


## Build

```
ci/build.sh
```
