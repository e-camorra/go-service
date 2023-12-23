# Go service

## How start project

You can make it truly simple

1. copy .env.example and make simple .env file
2. check APP_PORT variable which set port into container which will use your app
3. check HOST_PORT variable which set local port your machine will use
4. on your machine docker must be installed

Nice, your environment is ready and you can start this project using one simple command "make up"

There are all commands for simple managing application you can use:

1. make up - build docker image and start container via image was builded(if image was already builded - command will just start you container)
2. make down - stopping and removing container
3. make develop - allow you start development in your project(for exit from container you can use "exit" command).
