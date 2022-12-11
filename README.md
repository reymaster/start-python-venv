# Description
This is a simple example of how use Visual Code Dev Container to develop a simple Python project, using Pipenv to create a separeted virtual environment.

# Requirements
- Docker
- Visual Studio Code
- Visual Studio Code Remote Development Extension Pack

# How to use
- Open the project folder in Visual Studio Code
- Click on the green button "Reopen in Container" in the bottom left corner
- Wait for the container to be created
- Open a terminal and run the command below to install the dependencies
```bash
make init
```
- Run the command below to create new project
```bash
make new name=<project_name>
```
- Run the command below to migrate initial db data
```bash
make migrate
```
- Run the command below to run the project
```bash
make r
```
- Open the browser and access the url http://localhost:8000

# Create new app
- Run the command below to create new app
```bash
make new name=<app_name>
```

# Create and run migrations
- Run the command below to create new migrations
```bash
make m
```