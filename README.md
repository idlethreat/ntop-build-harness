# Ntop Build Harness

## Introduction
This script will download and build the latest ntopng and nDPI from official ntop sources on github.

## Targets
Originally put together for Raspiban Jesse Lite, but builds and runs fine on both Ubuntu 16.04 LTS as well as Ubuntu 14.04 LTS

## Requirements
* `/bin/bash`
* root permissions to install files in the /opt directory

## How To Use
1. Download the latest script by running `git clone https://FIXME` on target system
2. cd into the `ntop-build-harness` directory and run the build harness with `bash ntop-build-harness.sh`
3. Sit around and wait for the install to finish

## How to run ntop
1. run `/opt/ntop/bin/ntop --help` for instructions on how to run it. Or, check out the internet.

## TODO
Have plans on MySQL support (has to be built in) and Geo libraries (have to be downloaded separately). But, if you're just looking for a quick way to get ntop installed on a device with minimum of fuss, this should do it.

## License

Attribution-NonCommercial-ShareAlike 4.0 International (CC BY-NC-SA 4.0)


https://creativecommons.org/licenses/by-nc-sa/4.0/