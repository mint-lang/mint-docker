# Mint in Docker

This repository offers a starting point of running mint in Docker. It uses [Docker Compose](https://docs.docker.com/compose/) so you should have it installed.

The default scaffolded application is located in the `workspace` folder and it's used as a starting point.

If you only want to use Docker check the end of this readme.

## Avaiable Commands

This repository makes use of a [Makefile](https://en.wikipedia.org/wiki/Make_(software)#Makefile) to achieve short commands.

### Development Server

Run `make` or `make server` to start a development server:

```console
$ make
docker-compose run --rm --service-ports mint start --host 0.0.0.0
Mint - Running the development server
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
⚙ Ensuring dependencies... 130μs
⚙ Parsing files... 20.682ms
⚙ Development server started on http://0.0.0.0:3000/
```

### Build

Run `make build` to build the final files into the `workspace/dist` folder:

```console
$ make build
docker-compose run --rm mint build
Mint - Building for production
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
⚙ Ensuring dependencies... 0μs
⚙ Clearing the "dist" directory... 376μs
⚙ Compiling your application:
  ➔ Parsing 4 source files... 17.345ms
  ➔ Type checking: 22.129ms
  ➔ Compiling: 2.541ms
⚙ Writing external stylesheets...165μs
⚙ Writing index.html... 587μs
⚙ Writing manifest.webmanifest...140μs
⚙ Generating icons... 363.919ms
⚙ Creating service worker...1.079ms
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
All done in 2.274s!
```

### Formatting Files

Run `make format` to format all source files:

```console
$ make format
docker-compose run --rm mint format
Mint - Formatting files
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
All files are formatted!
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
All done in 41.795ms!
```

### Install Dependencies

Run `make install` to install any dependencies you added:

```console
$ make install
docker-compose run --rm mint install
Mint - Installing dependencies
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
There are no dependencies!

There is nothing to do!
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
All done in 119μs!
```

## Plain Docker

You can use plain Docker to achieve the same commands above.

You will need to pull the latest image:

```console
$ docker pull mintlang/mint
```

If you are on windows you need to change `$(pwd)/workspace` to the absolute path of the `workspace` folder.

### Development Server

To run the development server run the following command:

```console
docker run --tty -v $(pwd)/workspace:/workspace -w /workspace -p 3000:3000 --rm -ti mint start -h 0.0.0.0
```

### Build

To create a build run:

```console
docker run --tty -v $(pwd)/workspace:/workspace -w /workspace --rm -ti mint build
```

### Formatting Files

To format files run:

```console
docker run --tty -v $(pwd)/workspace:/workspace -w /workspace --rm -ti mint format
```

### Install Dependencies

To install dependencies run:

```console
docker run --tty -v $(pwd)/workspace:/workspace -w /workspace --rm -ti mint install
```
