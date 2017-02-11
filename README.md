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
Once inside, you'll need to install the GHC.

``` bash
$ stack setup
```

Then compile the program using Stack.

``` bash
$ stack build
```

An executable file will already be created ready for you to run.

``` bash
$ stack exec slackwolf-api-exe
```

If you want changes in the code to appear in the server, stop the server and
then do the following:

``` bash
$ stack build
$ stack exec slackwolf-api-exe
```

[docker]: https://www.docker.com/
