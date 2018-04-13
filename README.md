# Documentation

+ [Quickstart](#Quickstart);
+ [Build container](#Build);
    + [Examples](#Ex1);
+ [Run container](#Run);
    + [Environment variables](#Table2);
    + [Examples](#Ex2);
+ [Docker compose](#DC);
    + [Examples](#Ex3);

## <a name="Quickstart"></a> Quickstart

Clone this repository in your directory.

```sh
$ cd workdir
$ git clone https://github.com/unicanova/tru_clinic

```

## <a name="Build"></a> Build container

To build docker image with nginx you have to execute in the parent folder **docker build -t reponame:version .**

### <a name="Ex1"></a> Examples

```sh
$ docker build -t <tag> .

```

## <a name="Run"></a> Run container

The container can also be launched in two ways:

* a with the use of default values of environment variables.

* b with redefinition of environment variables. The number of predefined environment variables is unlimited.

#### <a name="Table2"></a> Environment variables

| Variable name | Variable value | Default Value |
| ------------- | -------------- | ------------- |
| NGINX_INTEGARATIONS_EPIC_ENCRYPT_HOST | host address | localhost:3001 |
| NGINX_INTEGARATIONS_EPIC_HOST | host address  | localhost:3001 |
| NGINX_ROOT_HOST | host address  | localhost:3001 |
| NGINX_SUPERADMIN_HOST | host address  | 127.0.0.1:3011 |
| NGINX_SOCKETIO_HOST | host address  | localhost:3001 |
| NGINX_SSL_REWRITE_PORT | ssl rewrite port  | 80 |
| NGINX_PROXY_PORT |  proxy pass port | 443 |

### <a name="Ex2"></a> Examples 

```sh
a $ docker run <container_name>

b $ docker run -e NGINX_INTEGARATIONS_EPIC_ENCRYPT_HOST=<host_name> -e NGINX_SSL_REWRITE_PORT=<port> <container_name>"
```

## <a name="DC"></a> Docker-compose


### <a name="Ex3"></a> Examples 

```sh
$ docker-compose up
```
