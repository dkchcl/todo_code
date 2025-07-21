#!/bin/bash

apt update -y
apt install nginx unzip -y
systemctl enable nginx
systemctl start nginx