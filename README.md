# Slackwolf API

A Haskell API to interact with Slackwolf's DB.

## Quick Start

To use this code you will need [Docker][docker].
This code has been tested on Docker v1.11.1.
After starting the Docker machine, do the following:

``` bash
$ scripts/docker-init
```

This will upgrade the Docker containers to their latest version, start all the
containers, and log you into the Slackwolf API container.
Once inside, download all the dependencies and build the project using cabal.

``` bash
$ cabal install
```

Once the project is built, you can run the server.

``` bash
$ slackwolf-api
```

If you want changes in the code to appear in the server, stop the server and
then do the following:

``` bash
$ cabal install
$ slackwolf-api
```

[docker]: https://www.docker.com/
