# Go service

## How start project

```
$ git clone https://github.com/e-camorra/go-service
$ cd go-service
```

You can make it truly simple

* copy .env.example and make simple .env file
* check APP_PORT variable which set port into container which will use your app
* check HOST_PORT variable which set local port your machine will use
* on your machine docker must be installed

### There are all commands for simple managing application you can use:

```
$ make up-prod  
```

* build docker image for production and start container via image was builded
* if image was already builded - command will just start you container

```
$ make up-dev 
```

* build docker image for development and start container via image was builded
* if image was already builded - command will just start you container

```
$ make build-dev 
```

* restart container with new code base

```
$ make down 
``` 

* stopping and removing container

