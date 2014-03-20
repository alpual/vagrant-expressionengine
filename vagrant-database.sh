#!/usr/bin/env bash

# define the database name here
DATABASE_NAME="ee_my_client_database"

# create database
sudo mysql --user=root --password=root -e "create database $DATABASE_NAME"
