#!/usr/bin/env bash

# define the database name here
DATABASE_NAME="my_client"

# create database
sudo mysql --user=root --password=root -e "create database $DATABASE_NAME"



