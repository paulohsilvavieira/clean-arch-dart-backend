<h1 align="center">
  <img src="https://www.scottbrady91.com/img/logos/dart.svg" width="100"/>
  <br/>
  Dart Arch
</h1>

## Description

Clear Arch Dart project.

## Requeriments
 - Dart
 - Postgresql
## Installation
To install packages for dart

```bash
$ dart pub get
```

## Configure App
- Create .env file
```bash
# copy .env.default and rename the copy to .env
$ cp .env.default .env
# change values inside .env
PORT=
PG_HOST=
PG_PORT=
PG_USERNAME=
PG_PASSWORD=
```

- Create the database app on Postgres


## Running the app

```bash
$ dart run bin/main
```


## Test

```bash
$ dart test
```