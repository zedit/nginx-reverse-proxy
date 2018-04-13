# Documentation

+ [Quickstart](#Quickstart);
+ [Run container](#Run);
    + [Environment variables](#Table1);
    + [Examples](#Ex1);

## <a name="Quickstart"></a> Quickstart

Clone this repository in your directory.

```sh
$ git clone https://github.com/unicanova/nginx-reverse-proxy
```
To build docker image with nginx you have to execute in the parent folder **docker build -t reponame:version .**

```sh
$ docker build -t nginx_reverse_proxy:1 .
```
Push docker image in docker hub

```sh
$ docker login
$ docker push nginx_reverse_proxy:1
```

If necessary, edit `docker-compose.yml` file for your situation and write:

```sh
$ docker-compose up
```

Image will be created and container automatically launched. 

## <a name="Run"></a> Run container

The container can be launched in two ways:

* a with the use of default values of environment variables.

* b with redefinition of environment variables. The number of predefined environment variables is unlimited.

#### <a name="Table1"></a> Environment variables

| Variable name | Variables description | Default Value |
| ------------- | --------------------- | ------------- |
| NGINX_INTEGARATIONS_EPIC_ENCRYPT_URL | host_name:port without http:// (port is optional) | localhost:3001 |
| NGINX_INTEGARATIONS_EPIC_URL | host_name:port without http:// (port is optional) | localhost:3001 |
| NGINX_ROOT_URL | host_name:port without http:// (port is optional)  | localhost:3001 |
| NGINX_SUPERADMIN_URL | host_name:port without http:// (port is optional) | 127.0.0.1:3011 |
| NGINX_SOCKETIO_URL | host_name:port without http:// (port is optional) | localhost:3001 |
| NGINX_SSL_REWRITE_PORT | ssl rewrite port | 8080 |
| NGINX_PROXY_PORT | proxy pass port | 80 |

### <a name="Ex1"></a> Examples 

```sh
a $ docker run nginx_reverse_proxy:1

b $ docker run -e NGINX_INTEGARATIONS_EPIC_ENCRYPT_URL=clinic:3334 -e NGINX_SSL_REWRITE_PORT=1111 nginx_reverse_proxy:1
```
