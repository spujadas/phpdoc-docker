# phpDocumentor Docker image

[phpDocumentor](http://www.phpdoc.org/) version v2.8.2

### Contents

 - Installation
 - Usage
 - Update
 - Build
	 - Build with Docker
	 - Build with Docker Compose
 - About

## Installation

	cd <install-directory>
	wget https://raw.githubusercontent.com/spujadas/phpdoc-docker/master/phpdoc
	chmod +x phpdoc

## Usage

	<install-directory>/phpdoc <arguments>

**Note** – When using options that refer to directories (`-d`, `-f`, `-t`), make sure that the paths you use are:

 - relative to the current directory, e.g. `.` or `./my-app` (not `/var/www/public_html/my_app`),
 - at the same level as or below the current directory, e.g. `.` or `./my-app` (not `../my_app`).

**Tip** – Solutions to avoid typing the `<install-directory>/` prefix include:

 - Using an alias, e.g. `alias phpdoc-docker="<install-directory>/phpdoc"` (and you may want to consider including that command in your `~/.bashrc` file)

 - Copying the `phpdoc` script to a directory in your `$PATH`, e.g. `sudo cp <install-directory>/phpdoc /usr/local/bin/phpdoc-docker`

## Update

When a new [sebp/phpdoc image](https://registry.hub.docker.com/u/sebp/phpdoc/) is available, update phpDocumentor with the following command:

	sudo docker pull sebp/phpdoc-docker

## Build

First clone or download the [spujadas/phpdoc-docker](https://github.com/spujadas/phpdoc-docker) GitHub repository, open a shell in the newly created `phpdoc-docker` directory, then build the image and run a container using Docker or Docker Compose, as explained below.

### Build with Docker

This command will build the image:

	$ sudo docker build .
	...	
	Successfully built 58b1388d0153

To run a container using this image, use the command in the `phpdoc` script, replacing:

 - `sebp/phpdoc` with the image's identifier as returned by the `docker build` command (`58b1388d0153` in the example above)

 - `"$@"` with the arguments you want to pass to `phpdoc`

### Build with Docker Compose

Build the image with this command:

	$ sudo docker-compose build

**Note** – If you're not building the image in the default `phpdoc-docker` directory, then append `-p phpdocdocker` to this command so that the image is named correctly for the next command to work.

Run a container using this command:

	$ ./docker.local-build <arguments>

## About

Written by [Sébastien Pujadas](http://pujadas.net), released under the [MIT license](http://opensource.org/licenses/MIT).
