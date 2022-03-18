# PhoenixSample

![Build Status](https://github.com/gotoeveryone/phoenix_sample/workflows/Build/badge.svg)

## Requirements

- Docker

## Setup

```console
$ cp .env.example .env
$ docker-compose up
```

## Migration

```console
$ docker-compose exec app mix ecto.migrate
```

## Test

```console
$ docker-compose exec app mix test
```

## Generate secret

```console
$ docker-compose exec app mix phx.gen.secret
```
