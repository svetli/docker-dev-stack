# 1. Installation

## 1.1.1 Requirements
- Docker (1.12+)
- docker-compose (1.10+)
- GNU make

## 1.1.2 Clone project

```
$ git clone https://github.com/svetli/docker-dev-stack
$ cd docker-dev-stack
```

## 1.1.3 Initialization

Copy `docker-compose.override.yml.dist` to `docker-compose.override.yml`. Change ports and services if you need.

```
$ make start
```

## 1.1.4 System configuration

Add `devserver.local` to `/etc/hostts`:

```
127.0.0.1   devserver.local
127.0.0.1   pma.devserver.local
```

## 1.1.5 Access to project

htdocs:     [http://devserver.local]
phpmyadmin: [http://pma.devserver.local]