#!/bin/bash
service mysql start
mysql < script.sql
service mysql down
exec mysqld_safe
