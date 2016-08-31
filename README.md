# govendor
A docker image for [kardianos/govendor](https://github.com/kardianos/govendor).

Purpose: Avoid installing govendor or even golang locally. To facilitate containerized development.


# Usage

Vendor `govendor.sh` into your workspace:

```
curl -o govendor.sh https://raw.githubusercontent.com/karlkfi/govendor/master/govendor.sh
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


## Private Repos

If you're working on a private project with private dependencies, you can pass in an SSH private key to authenticate with git servers:

```
PRIVATE_KEY=~/id_rsa govendor.sh <command>
```

If the private key is encrypted, this will interactively prompt for its password.


## Build

Normally, you can just use the docker image hosted on dockerhub, but if you need to rebuild locally (for updates or to bump the docker version):

```
ci/build.sh
```
